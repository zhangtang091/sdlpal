# Adapted from Makefile for Dingux by Rikku2000

TARGET = sdlpal

HOST =

ADPLUG_FILES = adplug/rix.cpp adplug/player.cpp adplug/binio.cpp \
	adplug/fprovide.cpp adplug/binfile.cpp adplug/dosbox_opl.cpp \
	adplug/fmopl.c adplug/dbopl.cpp adplug/surroundopl.cpp \
	adplug/emuopl.cpp adplug/demuopl.cpp adplug/dbemuopl.cpp

LIBMAD_FILES = libmad/bit.c libmad/decoder.c libmad/fixed.c libmad/frame.c \
	libmad/huffman.c libmad/layer12.c libmad/layer3.c libmad/music_mad.c \
	libmad/stream.c libmad/synth.c libmad/timer.c

LIBOGGVORBIS_FILES = liboggvorbis/src/analysis.c liboggvorbis/src/bitrate.c \
    liboggvorbis/src/bitwise.c liboggvorbis/src/block.c liboggvorbis/src/codebook.c \
    liboggvorbis/src/envelope.c liboggvorbis/src/floor0.c liboggvorbis/src/floor1.c \
    liboggvorbis/src/framing.c liboggvorbis/src/info.c liboggvorbis/src/lookup.c \
    liboggvorbis/src/lpc.c liboggvorbis/src/lsp.c liboggvorbis/src/mapping0.c \
    liboggvorbis/src/mdct.c liboggvorbis/src/psy.c liboggvorbis/src/registry.c \
    liboggvorbis/src/res0.c liboggvorbis/src/sharedbook.c liboggvorbis/src/smallft.c \
    liboggvorbis/src/synthesis.c liboggvorbis/src/vorbisenc.c liboggvorbis/src/vorbisfile.c \
    liboggvorbis/src/window.c

FILES = battle.c ending.c fight.c font.c game.c getopt.c global.c input.c \
    itemmenu.c magicmenu.c main.c map.c mp3play.c oggplay.c palcommon.c \
	palette.c play.c res.c resampler.c rixplay.cpp rngplay.c scene.c script.c \
	sound.c text.c ui.c uibattle.c uigame.c util.c video.c yj1.c 

FILES += $(ADPLUG_FILES)
FILES += $(LIBMAD_FILES)
FILES += $(LIBOGGVORBIS_FILES)

CFLAGS = `sdl-config --cflags` -g -Wall -O2 -fno-strict-aliasing
LDFLAGS = `sdl-config --libs` -lstdc++ -lm

$(TARGET):
	$(HOST)gcc $(CFLAGS) -o $(TARGET) $(FILES) $(LDFLAGS)

clean:
	rm -f $(TARGET)
