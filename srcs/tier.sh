#!/usr/bin/env bash
#############################################################
declare   "helper=${1-yay}"
#############################################################
source    "head.sh"
source    "core.sh"  "${helper}"  "helper name      :"  false
source    "foot.sh"
#############################################################
declare   "src=${TMPDIR}/${helper}/"
declare   "url=https://aur.archlinux.org/${helper}"
#############################################################
source    "net1.sh"  "${src}"  "${url}"
cd                   "${src}"
#############################################################
eval      "makepkg -si --noconfirm --needed"
#############################################################
