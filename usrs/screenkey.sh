#!/usr/bin/env bash
##########################
declare   "bin=screenkey"
declare   "cmd=killall"
##########################
${cmd} -q ${bin}
##########################
${bin} -m -t 0.4
##########################
