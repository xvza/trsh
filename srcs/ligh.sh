#!/usr/bin/env bash
###############################################################
declare   "dest=/etc/lightdm/lightdm.conf"
###############################################################
source    "moun.sh"   "list"
source    "head.sh"
source    "core.sh"   "${dirs[list]}"   "list directory   :"
source    "core.sh"   "${dest}"         "dest file        :"
source    "foot.sh"
###############################################################
declare   "src=${dirs[list]}/ligh/"
source    "sudo.sh"   "rep2.sh"         "${dest}"   "${src}val"
###############################################################
