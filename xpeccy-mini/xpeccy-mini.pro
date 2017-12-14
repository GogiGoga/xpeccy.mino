#-------------------------------------------------
#
# Project created by QtCreator 2017-12-14T09:27:46
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xpeccy-mini
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#LIBS += -L"C:\Qt\Qt5.7.0\5.7\mingw53_32\bin" -lSDL


SOURCES +=\
    ../src/xcore/common.cpp \
    ../src/xcore/config.cpp \
    ../src/xcore/gamepad.cpp \
    ../src/xcore/keymap.cpp \
    ../src/xcore/layouts.cpp \
    ../src/xcore/profiles.cpp \
    ../src/xcore/romsets.cpp \
    ../src/xcore/sound.cpp \
    ../src/xcore/vfilters.cpp \
    ../src/xcore/vscalers.cpp \
    ../src/emulwin.cpp \
    ../src/ethread.cpp \
    ../src/filer.cpp \
    ../src/main.cpp \
    ../src/libxpeccy/cpu/Z80/z80.c \
    ../src/libxpeccy/cpu/Z80/z80_tab.c \
    ../src/libxpeccy/cpu/Z80/z80cb.c \
    ../src/libxpeccy/cpu/Z80/z80dd.c \
    ../src/libxpeccy/cpu/Z80/z80ddcb.c \
    ../src/libxpeccy/cpu/Z80/z80ed.c \
    ../src/libxpeccy/cpu/Z80/z80fd.c \
    ../src/libxpeccy/cpu/Z80/z80fdcb.c \
    ../src/libxpeccy/cpu/Z80/z80nop.c \
    ../src/libxpeccy/cpu/cpu.c \
    ../src/libxpeccy/filetypes/sna.c \
    ../src/libxpeccy/hardware/common.c \
    ../src/libxpeccy/hardware/hardware.c \
    ../src/libxpeccy/hardware/zx48.c \
    ../src/libxpeccy/sound/sndcommon.c \
    ../src/libxpeccy/video/video.c \
    ../src/libxpeccy/input.c \
    ../src/libxpeccy/memory.c \
    ../src/libxpeccy/spectrum.c

HEADERS  += \
    ../src/libxpeccy/cpu/Z80/z80.h \
    ../src/libxpeccy/cpu/Z80/z80_macro.h \
    ../src/libxpeccy/cpu/Z80/z80_nop.h \
    ../src/libxpeccy/cpu/cpu.h \
    ../src/libxpeccy/filetypes/filetypes.h \
    ../src/libxpeccy/hardware/hardware.h \
    ../src/libxpeccy/sound/sndcommon.h \
    ../src/libxpeccy/video/vidcommon.h \
    ../src/libxpeccy/video/video.h \
    ../src/libxpeccy/input.h \
    ../src/libxpeccy/memory.h \
    ../src/libxpeccy/spectrum.h \
    ../src/xcore/gamepad.h \
    ../src/xcore/sound.h \
    ../src/xcore/vfilters.h \
    ../src/xcore/vscalers.h \
    ../src/xcore/xcore.h \
    ../src/emulwin.h \
    ../src/ethread.h \
    ../src/filer.h \
    ../src/version.h


win32: LIBS += -L$$PWD/../extlibs/SDL2-2.0.7/lib/x86/ -lSDL2


INCLUDEPATH += $$PWD/../src/libxpeccy

INCLUDEPATH += $$PWD/../extlibs/SDL2-2.0.7/include
DEPENDPATH += $$PWD/../extlibs/SDL2-2.0.7/include
