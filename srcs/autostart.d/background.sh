#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "path=org.gnome.desktop.background"
declare   "file=file://${SKEL}/Picture/_.jpg"
###########################################################
eval      "display -window root ${file}"
eval      "gsettings set ${path} picture-uri ${file}"
###########################################################
