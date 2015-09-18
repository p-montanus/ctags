# CC0
# http://creativecommons.org/publicdomain/zero/1.0/


# DEFUN_FALLBACK(NAME, EXPANSION)
m4_define([DEFUN_FALLBACK],
[
m4_ifdef([$1],[],[m4_defun([$1],[$2])])
])

# DEFUN_FALLBACK_BACKPORT(NAME, FIRST-APPEARED, [COMMENTS], BACKPORT-FROM, COPYRIGHTS, EXPANSION)
m4_define([DEFUN_FALLBACK_BACKPORT],
[
DEFUN_FALLBACK([$1],[$6])
])

# DEFUN_FALLBACK_EQUIVALENT(NAME, FIRST-APPEARED, [COMMENTS], EXPANSION)
m4_define([DEFUN_FALLBACK_EQUIVALENT],
[
DEFUN_FALLBACK([$1],[$4])
])
