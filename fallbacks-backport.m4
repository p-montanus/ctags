m4_define([COPYRIGHTS_OF_AUTOCONF269_PROGRAMS_M4],
[dnl
# Copyright (C) 1992-1996, 1998-2012 Free Software Foundation, Inc.

# This file is part of Autoconf.  This program is free
# software; you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Under Section 7 of GPL version 3, you are granted additional
# permissions described in the Autoconf Configure Script Exception,
# version 3.0, as published by the Free Software Foundation.
#
# You should have received a copy of the GNU General Public License
# and a copy of the Autoconf Configure Script Exception along with
# this program; see the files COPYINGv3 and COPYING.EXCEPTION
# respectively.  If not, see <http://www.gnu.org/licenses/>.

# Written by David MacKenzie, with help from
# Franc,ois Pinard, Karl Berry, Richard Pixley, Ian Lance Taylor,
# Roland McGrath, Noah Friedman, david d zuhn, and many others.
])


DEFUN_FALLBACK_BACKPORT([AC_PROG_MKDIR_P], [autoconf-2.59d],
[],
[autoconf-2.69 (v2.69 e0e7813ea5e6fb615e6e840f2b926b3b5859cca5) lib/autoconf/programs.m4],
[COPYRIGHTS_OF_AUTOCONF269_PROGRAMS_M4],
[dnl
AC_REQUIRE([AC_CONFIG_AUX_DIR_DEFAULT])dnl
AC_REQUIRE_AUX_FILE([install-sh])dnl
AC_MSG_CHECKING([for a thread-safe mkdir -p])
if test -z "$MKDIR_P"; then
  AC_CACHE_VAL([ac_cv_path_mkdir],
    [_AS_PATH_WALK([$PATH$PATH_SEPARATOR/opt/sfw/bin],
      [for ac_prog in mkdir gmkdir; do
	 for ac_exec_ext in '' $ac_executable_extensions; do
	   AS_EXECUTABLE_P(["$as_dir/$ac_prog$ac_exec_ext"]) || continue
	   case `"$as_dir/$ac_prog$ac_exec_ext" --version 2>&1` in #(
	     'mkdir (GNU coreutils) '* | \
	     'mkdir (coreutils) '* | \
	     'mkdir (fileutils) '4.1*)
	       ac_cv_path_mkdir=$as_dir/$ac_prog$ac_exec_ext
	       break 3;;
	   esac
	 done
       done])])
  test -d ./--version && rmdir ./--version
  if test "${ac_cv_path_mkdir+set}" = set; then
    MKDIR_P="$ac_cv_path_mkdir -p"
  else
    # As a last resort, use the slow shell script.  Don't cache a
    # value for MKDIR_P within a source directory, because that will
    # break other packages using the cache if that directory is
    # removed, or if the value is a relative name.
    MKDIR_P="$ac_install_sh -d"
  fi
fi
dnl status.m4 does special magic for MKDIR_P instead of AC_SUBST,
dnl to get relative names right.  However, also AC_SUBST here so
dnl that Automake versions before 1.10 will pick it up (they do not
dnl trace AC_SUBST_TRACE).
dnl FIXME: Remove this once we drop support for Automake < 1.10.
AC_SUBST([MKDIR_P])dnl
AC_MSG_RESULT([$MKDIR_P])
])
