#!/usr/bin/env bash
###################################################
declare   "dir=${2-/dev/}"
###################################################
source    "head.sh"
source    "core.sh"  "${1}"    "swap device      :"
source    "core.sh"  "${dir}"  "dev directory    :"
source    "foot.sh"
###################################################
eval      "sudo mkswap ${dir}${1?}"
eval      "sudo swapon ${dir}${1?}"
eval      "sudo swapon -s"
###################################################
echo      "mkswap"   "${dir}${1?}"
echo      "swapon"   "${dir}${1?}"
echo      "swapon"   "-s"
###################################################
