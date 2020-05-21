#!/usr/bin/env bash
############################
declare   "bin=screenkey"
declare   "cmd=killall"
############################
eval      "${cmd} -q ${bin}"
eval      "${bin} -m -t 0.4"
############################
