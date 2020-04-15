#!/usr/bin/env bash
####################################################
declare   "dest=/etc/lightdm/lightdm.conf"
declare   "src=ligh/val"
####################################################
source    "moun.sh"  "list"
source    "head.sh"
source    "core.sh"  "${dest}"  "dest file        :"
source    "foot.sh"
####################################################
declare   "src=${dire[list]}/${src}"
####################################################
eval      "sudo rep2.sh ${dest} ${src}"
####################################################
