#!/usr/bin/env bash
############################################################
declare   "src=${1-/usr/share/themes/Qogir-dark/gtk-3.0/}"
############################################################
source    "moun.sh"   "list"
source    "head.sh"
source    "core.sh"   "${src}"          "css  directory   :"
source    "core.sh"   "${dirs[list]}"   "list directory   :"
source    "foot.sh"
############################################################
declare   "dest=${dirs[list]}/colo/"
source    "rep0.sh"   "${src}gtk.css"   "${dest}rep"
############################################################
