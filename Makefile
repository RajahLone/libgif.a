
CROSSPREFIX=/opt/cross-mint/bin/m68k-atari-mint-
PATH = /opt/cross-mint/m68k-atari-mint/bin:/opt/cross-mint/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
LD_LIBRARY_PATH=/opt/cross-mint/lib:/opt/cross-mint/m68k-atari-mint/lib:$LD_LIBRARY_PATH
DESTDIR=/opt/cross-mint/m68k-atari-mint

CC = $(CROSSPREFIX)gcc
AS = $(CC)
AR = $(CROSSPREFIX)ar
RANLIB = $(CROSSPREFIX)ranlib
STRIP = $(CROSSPREFIX)strip
FLAGS = $(CROSSPREFIX)flags

CFLAGS = -std=gnu99 -Wall -Wno-format-truncation
OFLAGS = -O2 -fomit-frame-pointer

SRCS = dgif_lib.c egif_lib.c getarg.c gif_err.c gif_font.c gif_hash.c gif2rgb.c gifalloc.c gifbg.c gifbuild.c gifclrmp.c gifcolor.c \
       gifecho.c giffilter.c giffix.c gifhisto.c gifinto.c gifsponge.c giftext.c giftool.c gifwedge.c \
       openbsd-reallocarray.c qprintf.c quantize.c

OBJS = dgif_lib.o egif_lib.o getarg.o gif_err.o gif_font.o gif_hash.o gif2rgb.o gifalloc.o gifbg.o gifbuild.o gifclrmp.o gifcolor.o \
			 gifecho.o giffilter.o giffix.o gifhisto.o gifinto.o gifsponge.o giftext.o giftool.o gifwedge.o \
       openbsd-reallocarray.o qprintf.o quantize.o

libgif.a:
	cp -r *.h $(DESTDIR)/include
	$(CC) $(CFLAGS) -m68000 $(OFLAGS) -c $(SRCS)
	$(AR) -rcs $@ $(OBJS)
	$(AR) s $@
	cp libgif.a $(DESTDIR)/lib/libgif.a
	rm -f *.o libgif.a
	$(CC) $(CFLAGS) -m68020-60 $(OFLAGS) -c $(SRCS)
	$(AR) -rcs $@ $(OBJS)
	$(AR) s $@
	cp libgif.a $(DESTDIR)/lib/m68020-60/libgif.a
	rm -f *.o libgif.a
	$(CC) $(CFLAGS) -mcpu=5475 $(OFLAGS) -c $(SRCS)
	$(AR) -rcs $@ $(OBJS)
	$(AR) s $@
	cp libgif.a $(DESTDIR)/lib/m5475/libgif.a
	rm -f *.o libgif.a

clean:
	rm -f *.o libgif.a
