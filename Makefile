CFLAGS	+=	-I. -g
CFLAGS	+=	-Wall -Wpointer-arith
CFLAGS  +=	-Wstrict-prototypes -Wmissing-prototypes
CFLAGS  +=	-Wmissing-declarations -Wshadow
CFLAGS  +=	-Wpointer-arith -Wcast-qual
CFLAGS  +=	-Wsign-compare

LDFLAGS	+=	-lncurses -lutil

# (Common) compile-time options:
#
#	FKEYS		-- add support for function key sequences.
#	REGEX		-- create regular expression functions.
#	STARTUP		-- look for and handle initialization file.
#	XKEYS		-- use termcap function key definitions.
#				note: XKEYS and bsmap mode do _not_ get along.
#
CFLAGS	+=	-DFKEYS -DREGEX -DXKEYS

PROG	 =	mg
SRCS	 =	autoexec.c basic.c buffer.c cinfo.c dir.c display.c \
		echo.c extend.c file.c fileio.c funmap.c help.c kbd.c \
		keymap.c line.c macro.c main.c match.c modes.c \
		paragraph.c random.c re_search.c region.c search.c \
		spawn.c tty.c ttyio.c ttykbd.c undo.c version.c \
		window.c word.c yank.c cmode.c dired.c grep.c theo.c \
		cscope.c tags.c bell.c

MAN	 =	mg.1

.include <bsd.prog.mk>
