AC_PREREQ(2.68)

AC_INIT([libbrotli], [0.4.0], [-])
AC_CONFIG_SRCDIR([brotli/dec/decode.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

LT_INIT([shared disable-static])

AM_INIT_AUTOMAKE()
AM_MAINTAINER_MODE
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_PROG_CXX

AC_CONFIG_FILES([Makefile libbrotlienc.pc libbrotlidec.pc bro.pc])

AC_ARG_ENABLE(debug,
AS_HELP_STRING([--enable-debug],
               [enable debugging, default: no]),
[case "${enableval}" in
             yes) debug=true ;;
             no)  debug=false ;;
             *)   AC_MSG_ERROR([bad value ${enableval} for --enable-debug]) ;;
esac],
[debug=false])

AM_CONDITIONAL(DEBUG, test x"$debug" = x"true")


AC_OUTPUT
