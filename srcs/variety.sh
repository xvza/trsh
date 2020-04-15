#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "cfg=${SHRD}/${name}/"
declare   "cmd=killall"
#################################################
eval      "${cmd} -q ${name}"
eval      "${name} -v --profile=${cfg}"
#################################################
