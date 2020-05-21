#!/usr/bin/env bash
###########################################################
declare   "s0=${1?output file}"
declare   "s1=${2?list domain}"
declare   "s2=${3?directory destination}"
###########################################################
eval      "wget -O${1} -P${3} ${2} -q --show-progress"
###########################################################
