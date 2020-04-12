#!/usr/bin/env bash
##########################################################
source    "vali.sh"  "pacman"   "del"
source    "head.sh"
source    "core.sh"  "${1}"     "program         :"
source    "core.sh"  "${opts}"  "options         :"  false
source    "foot.sh"
##########################################################
eval      "${1} ${rep}"                                  |
eval      "sudo ${1} ${opts} -"
eval      "${1} ${orp}"                                  |
eval      "sudo ${1} ${opts} -"
##########################################################
