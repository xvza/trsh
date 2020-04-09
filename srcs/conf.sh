#!/usr/bin/env bash
#####################################################################
declare   "src=${1-/tmp/}"
#####################################################################
source    "moun.sh"   "conf"
source    "head.sh"
source    "core.sh"   "${dirs[conf]}"   "conf directory  :"
source    "core.sh"   "${src}conf/"     "dest directory  :"    false
source    "foot.sh"
#####################################################################
source    "dir0.sh"   "${src}"          "${dirs[conf]}"
source    "rep3.sh"   "${src}conf/"     "_USER"   "${USER}"
#####################################################################
source    "path.sh"   "${2-dconf}"
for item in "${src}conf/"[a-z]*
do
  declare "key=$(basename ${item})"
  declare "key=/${key//.//}/"
  declare "$(${path[conf]} reset -f ${key})"
  declare "$(${path[conf]} load     ${key} < ${item})"
  source  "prin.sh"   "> ${key}"
  source  "prin.sh"   "< ${item}"
done
#####################################################################
