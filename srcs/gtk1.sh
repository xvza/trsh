#!/usr/bin/env bash
##############################################################
declare   "src=/usr/share/themes/Qogir-dark/gtk-3.0"
declare   "dest=colo/rep"
##############################################################
source    "moun.sh"  "list"
source    "head.sh"
source    "core.sh"  "${src}"          "css  directory   :"
source    "foot.sh"
source    "rep0.sh"  "${src}/gtk.css"  "${dire[list]}/${dest}"
##############################################################
