#!/usr/bin/env bash
#################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
declare   "dire=$(dirname ${BASH_SOURCE[0]})"
declare   "path=${dire}/../../share/${name}/"
#################################################
declare   "cmd=killall"
declare   "cfg=${path}"
#################################################
${cmd} -q ${name}
${name} -v --profile=${cfg}
#################################################
