ACLOCAL_AMFLAGS = -I m4

AM_CPPFLAGS = -Wall -I$(top_srcdir)/include -I$(top_srcdir)/src
AM_CFLAGS 	=
AM_CXXFLAGS =
AM_LDFLAGS 	=

if WIN32
AM_CPPFLAGS += -D_CRT_SECURE_NO_WARNINGS
AM_CPPFLAGS += -D_WIN32_WINNT=0x0500
AM_CPPFLAGS += -DWINVER=0x0500
AM_LDFLAGS  += -no-undefined

SUFFIXES = .rc .res
RCCOMPILE = $(RC) $(DEF) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS)
LTRCCOMPILE = $(LIBTOOL) --mode=compile --tag=RC $(RCCOMPILE)
.rc.lo:
	$(LTRCCOMPILE) --include-dir=$(srcdir) -O coff -i $< -o $@
#.rc.o:
#	$(RCCOMPILE) --include-dir=$(srcdir) -O coff -i $< -o $@
.rc.res:
	$(RCCOMPILE) --include-dir=$(srcdir) -O coff -i $< -o $@
endif

lib_LTLIBRARIES = libfreeglut3.la

noinst_PROGRAMS = \
callback-maker \
fractals \
fractals-random \
lorenz \
one \
resizer \
multi-touch \
shapes \
smooth_opengl3 \
subwin \
timer

callback_maker_SOURCES = ./progs/demos/CallbackMaker/CallbackMaker.c
callback_maker_LDADD = libfreeglut3.la

fractals_SOURCES = ./progs/demos/Fractals/fractals.c
fractals_LDADD = libfreeglut3.la

fractals_random_SOURCES = ./progs/demos/Fractals_random/fractals_random.c
fractals_random_LDADD = libfreeglut3.la

lorenz_SOURCES = ./progs/demos/Lorenz/lorenz.c
lorenz_LDADD = libfreeglut3.la

one_SOURCES = ./progs/demos/One/one.c
if WIN32
one_CPPFLAGS = $(AM_CPPFLAGS) -I$(top_srcdir)/progs/demos/One
one_LDADD = libfreeglut3.la ./progs/demos/One/one.res
endif

resizer_SOURCES = ./progs/demos/Resizer/Resizer.cpp
resizer_LDADD = libfreeglut3.la
resizer_LDFLAGS = -lglu32

multi_touch_SOURCES = ./progs/demos/multi-touch/multi-touch.c
multi_touch_LDADD = libfreeglut3.la

shapes_SOURCES = \
./progs/demos/shapes/shapes.c \
./progs/demos/shapes/glmatrix.c
shapes_LDADD = libfreeglut3.la

smooth_opengl3_SOURCES = ./progs/demos/smooth_opengl3/smooth_opengl3.c
smooth_opengl3_LDADD = libfreeglut3.la

subwin_SOURCES = ./progs/demos/subwin/subwin.c
subwin_LDADD = libfreeglut3.la

timer_SOURCES = ./progs/demos/timer/timer.c
timer_LDADD = libfreeglut3.la

FREEGLUT_SRCS = \
./src/fg_callbacks.c \
./src/fg_cursor.c \
./src/fg_display.c \
./src/fg_ext.c \
./src/fg_font_data.c \
./src/fg_gamemode.c \
./src/fg_geometry.c \
./src/fg_gl2.c \
./src/fg_init.c \
./src/fg_input_devices.c \
./src/fg_joystick.c \
./src/fg_main.c \
./src/fg_misc.c \
./src/fg_overlay.c \
./src/fg_spaceball.c \
./src/fg_state.c \
./src/fg_stroke_mono_roman.c \
./src/fg_stroke_roman.c \
./src/fg_structure.c \
./src/fg_teapot.c \
./src/fg_videoresize.c \
./src/fg_window.c

if FREEGLUT_GLES
FREEGLUT_SRCS += src/gles_stubs.c
else
FREEGLUT_SRCS += src/fg_font.c
FREEGLUT_SRCS += src/fg_menu.c
endif

if WIN32
FREEGLUT_SRCS += \
./src/mswin/fg_cursor_mswin.c \
./src/mswin/fg_display_mswin.c \
./src/mswin/fg_ext_mswin.c \
./src/mswin/fg_gamemode_mswin.c \
./src/mswin/fg_init_mswin.c \
./src/mswin/fg_input_devices_mswin.c \
./src/mswin/fg_joystick_mswin.c \
./src/mswin/fg_main_mswin.c \
./src/mswin/fg_menu_mswin.c \
./src/mswin/fg_spaceball_mswin.c \
./src/mswin/fg_state_mswin.c \
./src/mswin/fg_structure_mswin.c \
./src/mswin/fg_window_mswin.c \
./freeglut.rc
endif

if NEED_XPARSEGEOMETRY_IMPL
FREEGLUT_SRCS += src/util/xparsegeometry_repl.c
AM_CPPFLAGS += -DNEED_XPARSEGEOMETRY_IMPL
endif

libfreeglut3_la_CPPFLAGS = $(AM_CPPFLAGS) -DFREEGLUT_EXPORTS
libfreeglut3_la_SOURCES = $(FREEGLUT_SRCS)
libfreeglut3_la_LDFLAGS = $(AM_LDFLAGS)
if WIN32
libfreeglut3_la_LDFLAGS += -lopengl32 -lwinmm -lgdi32 -lm
#libfreeglut3_la_LIBADD = freeglut.res
endif
libfreeglut3_la_LDFLAGS += -version-info 3:10:0
