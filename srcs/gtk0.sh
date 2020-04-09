#!/usr/bin/env bash
###############################################################################################
declare   "dest=${2-/usr/share/themes/}Qogir-dark/"
declare   "src=${1-/tmp/}Qogir-theme/"
###############################################################################################
source    "head.sh"
source    "core.sh"   "${src}"    "src  directory   :"    false
source    "core.sh"   "${dest}"   "dest  directory  :"    false
source    "foot.sh"
###############################################################################################
source    "net1.sh"   "${src}"    "https://github.com/vinceliuice/Qogir-theme"
declare   "src=${src}src/"
###############################################################################################
declare   "tmp=gtk-2.0/"
source    "sudo.sh"   "adds.sh"   "${dest}${tmp}assets/"
source    "sudo.sh"   "dir0.sh"   "${dest}${tmp}gtkrc"      "${src}${tmp}theme/gtkrc-dark"
source    "sudo.sh"   "dir1.sh"   "${dest}${tmp}assets/"    "${src}${tmp}assets/assets-dark/"
source    "sudo.sh"   "dir0.sh"   "${dest}${tmp}"           "${src}${tmp}apps.rc"
source    "sudo.sh"   "dir0.sh"   "${dest}${tmp}"           "${src}${tmp}main.rc"
###############################################################################################
declare   "tmp=gtk-3.0/"
source    "sudo.sh"   "adds.sh"   "${dest}${tmp}assets/"
source    "sudo.sh"   "dir0.sh"   "${dest}${tmp}gtk.css"    "${src}${tmp}theme/gtk-dark.css"
source    "sudo.sh"   "dir1.sh"   "${dest}${tmp}assets/"    "${src}${tmp}assets/assets-common/"
source    "sudo.sh"   "dir1.sh"   "${dest}${tmp}assets/"    "${src}${tmp}assets/assets/"
###############################################################################################
