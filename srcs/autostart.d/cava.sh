#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "file=find ${SHRD}/${name} -type f"
declare   "color=${SHRD}/${name}/color.ini"
###########################################################
eval      "source colo.sh"
eval      "source snth.sh > ${color}"
eval      "${name} -p $(${file}|xargs)"
###########################################################
