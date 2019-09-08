AC_DEFUN([AX_GLES_SWITCH],
[
    AC_ARG_ENABLE([gles],
        [AS_HELP_STRING([--enable-gles], [toggle on OpenGL ES])],
        [enable_gles=yes],
        [enable_gles=no])
    AM_CONDITIONAL([FREEGLUT_GLES], [test x"$enable_gles" = x"yes"])
])
