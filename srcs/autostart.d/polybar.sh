#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "file=$(find ${SHRD}/${name} -type f)"
declare   "color=${SHRD}/${name}/color.ini"
###########################################################
eval      "source bars.sh > ${color}"
eval      "killall -q ${name}"
eval      "$(${name} -c  <(cat ${file})  bottom)"         &
eval      "$(${name} -c  <(cat ${file})  top)"            &
###########################################################
