#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
AC_PREREQ([2.68])
AC_INIT([freeglut], [3.0.0], [shengquangang2015@163.com])

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])

AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])

# Checks for programs.
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
AC_PROG_CXX
AC_PROG_CC
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
LT_INIT
LT_LANG([Windows Resource])

# Checks for libraries.
AX_GLES_SWITCH
AX_WIN32_SWITCH

# Checks for header files.
AC_PATH_X
AC_CHECK_HEADERS([fcntl.h inttypes.h limits.h mach/mach.h stddef.h stdint.h stdlib.h string.h sys/ioctl.h sys/param.h sys/time.h termios.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_TYPE_INT32_T
AC_TYPE_INT8_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_UINT64_T
AC_CHECK_TYPES([ptrdiff_t])

# Checks for library functions.
#AC_FUNC_MALLOC
#AC_FUNC_REALLOC
AC_CHECK_FUNCS([atexit clock_gettime gethostname gettimeofday memset select sqrt strchr strcspn strdup strerror strrchr strstr])
AC_CHECK_FUNCS([XParseGeometry])
AM_CONDITIONAL([NEED_XPARSEGEOMETRY_IMPL], [test x"$ac_cv_func_XParseGeometry" = x"no"])

AC_SUBST([CMAKE_INSTALL_PREFIX], [/usr/local])
AC_SUBST([CMAKE_INSTALL_FULL_LIBDIR], [$CMAKE_INSTALL_PREFIX/lib])

AC_SUBST([VERSION_MAJOR], [3])
AC_SUBST([VERSION_MINOR], [0])
AC_SUBST([VERSION_PATCH], [0])

AC_SUBST([PC_LIBNAME], ['glut'])
AC_SUBST([PC_LIBS_PRIVATE], ['-lopengl32 -lwinmm -lgdi32 -lm'])

AC_SUBST([PC_CFLAGS], [])
#AC_SUBST([PC_CFLAGS], [-DFREEGLUT_GLES])

AC_CONFIG_FILES([Makefile
                 freeglut.pc
                 freeglut.rc])
AC_OUTPUT
