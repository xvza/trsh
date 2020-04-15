#!/usr/bin/env bash
#######################################################
declare   "-A"  "path"
declare   "path[bin]=$(which ${1?} 2> /dev/null)"
declare   "path[file]=$(basename ${BASH_SOURCE[1]%.*})"
declare   "path[${path[file]}]=${path[bin]}"
#######################################################
