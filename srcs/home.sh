#!/usr/bin/env bash
##########################################################
declare   "dest=/$(id -nu 0)/"
##########################################################
source    "moun.sh"  "etcs"
source    "head.sh"
source    "core.sh"  "${dire[etcs]}"  "etcs directory   :"
source    "core.sh"  "${dest}"        "dest directory   :"
source    "foot.sh"
##########################################################
declare   "src=${dire[etcs]}/skel/.config/gtk-3.0/"
##########################################################
eval      "sudo dele.sh ${dest}"
eval      "sudo dir0.sh ${dest}.config/ ${src}"
eval      "sudo rep0.sh ${dest} _USER ${USER}"
##########################################################
