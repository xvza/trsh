#!/usr/bin/env bash
#############################################
source    "${util}moun.sh"  "list"
declare   "list=${dirs[list]}${2}/del"
#############################################
source    "${pkgs}vali.sh"  "${1}"  "${list}"
#############################################
eval      "cat ${list} | ${1?} ${del} -"
#############################################
