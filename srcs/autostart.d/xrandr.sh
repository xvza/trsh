#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "name=$(basename ${BASH_SOURCE[0]%.*})"
###########################################################
eval      "${name} -s ${WIDTH}x${HEIGHT}"
###########################################################