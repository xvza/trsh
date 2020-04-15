#!/usr/bin/env bash
##################################################################
source    "moun.sh"   "conf"
source    "head.sh"
source    "core.sh"   "${dire[conf]}"   "conf directory  :"
source    "core.sh"   "${TMPDIR}/conf"  "dest directory  :"  false
source    "foot.sh"
##################################################################
source    "dir0.sh"   "${TMPDIR}"       "${dirs[conf]}"
source    "rep3.sh"   "${TMPDIR}/conf"  "_USER"  "${USER}"
##################################################################
for item in "${TMPDIR}/conf/"[a-z]*
do
  declare "key=$(basename ${item})"
  declare "key=/${key//.//}/"
  eval    "dconf reset -f ${key}"
  eval    "dconf load     ${key} < ${item}"
  echo    "> ${key}"
  echo    "< ${item}"
done
##################################################################
