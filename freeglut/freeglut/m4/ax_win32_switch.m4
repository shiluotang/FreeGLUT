AC_DEFUN([AX_WIN32_SWITCH],
[
    AC_ARG_ENABLE([win32],
        [AS_HELP_STRING([--enable-win32], [toggle on WIN32])],
        [enable_win32=yes],
        [enable_win32=no])
    AM_CONDITIONAL([WIN32], [test x"$enable_win32" = x"yes"])
])
