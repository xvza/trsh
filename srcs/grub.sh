#!/usr/bin/env bash
##########################################################
declare   "dest=/etc/default/grub"
##########################################################
source    "moun.sh"  "list"
source    "head.sh"
source    "core.sh"  "${dire[list]}"  "list directory   :"
source    "core.sh"  "${dest}"        "dest file        :"
source    "foot.sh"
##########################################################
declare   "src=${dirs[list]}/grub/"
##########################################################
source    "sudo.sh"  "rep2.sh"  "${dest}"  "${src}val"
source    "sudo.sh"  "comm.sh"  "${dest}"  "${src}com"
source    "boot.sh"
##########################################################
