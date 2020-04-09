#!/usr/bin/env bash
##########################################################
declare     "-A"    "path"
declare     "path[cmd]=$(which ${2-which} 2> /dev/null)"
declare     "path[bin]=$(${path[cmd]} ${1?} 2> /dev/null)"
declare     "path[file]=$(basename ${BASH_SOURCE[1]%.*})"
declare     "path[${path[file]}]=${path[bin]}"
##########################################################
