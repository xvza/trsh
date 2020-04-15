#!/usr/bin/env bash
#################################################################
declare   "dest=/usr/share/icons"
declare   "src=${TMPDIR}Capitaine-cursors"
#################################################################
source    "head.sh"
source    "core.sh"  "${src}"   "src  directory  :"  false
source    "core.sh"  "${dest}"  "dest directory  :"
source    "foot.sh"
#################################################################
declare   "url=https://github.com/keeferrourke/capitaine-cursors"
source    "net1.sh"  "${src}"  "${url}"
eval      "sudo dir0.sh ${dest} ${src}/src/svg/light"
#################################################################
