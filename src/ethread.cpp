// emulation thread (non-GUI)

#include "ethread.h"
//#include "xgui/xgui.h"
#include "xcore/sound.h"
#include "xcore/vfilters.h"

QMutex emutex;

unsigned char* blkData = NULL;
extern unsigned char sbufa[1024 * 512 * 3];
extern unsigned char scrn[1024 * 512 * 3];
extern unsigned char prvScr[1024 * 512 * 3];

void processPicture(unsigned char* src, int size) {
	memcpy(sbufa, src, size);
	scrMix(prvScr, sbufa, size, conf.vid.noflic / 100.0);
}

xThread::xThread() {
	sndNs = 0;
	fast = 0;
	finish = 0;
	emutex.lock();
}

void xThread::emuCycle() {
//	int endBuf = 0;
	comp->frmStrobe = 0;
	sndNs = 0;
	conf->snd.fill = 1;
	do {
		// exec 1 opcode (or handle INT, NMI)
		sndNs += compExec(comp);
		if (comp->frmStrobe) {
			comp->frmStrobe = 0;
			if (!fast) {
				processPicture(comp->vid->scrimg, comp->vid->vBytes);
				if (waitpic) {
					waitpic = 0;
					emit picReady();
				}
			}
		}
		// if need - request sound buffer update
		if (sndNs > nsPerSample) {
			sndSync(comp, 0, fast);
			sndNs -= nsPerSample;
		}
	} while (!comp->brk && conf->snd.fill);
	comp->nmiRequest = 0;
}

void xThread::run() {
	waitpic = 1;
	emutex.lock();
	do {
		if (!block && !comp->brk) {
			emuCycle();
			if (comp->brk) {
				emit dbgRequest();
			}
		}
		if (!fast) emutex.lock();		// wait until unlocked (MainWin::onTimer() or at exit)
	} while (!finish);
	exit(0);
}
