#!/usr/bin/env bash
###############################################################################
declare   "dest=/usr/share/icons/"
declare   "src=${1-/tmp/}sardi.zip"
###############################################################################
source    "head.sh"
source    "core.sh"   "${src}"    "src  directory   :"    false
source    "core.sh"   "${dest}"   "dest  directory  :"
source    "foot.sh"
###############################################################################
declare   "url=https://sourceforge.net/projects/sardi/files/latest/"
###############################################################################
source    "net0.sh"   "${src}"    "${url}"
source    "extr.sh"   "${dest}"   "${src}"    "Sardi Flat/scalable/mimetypes/*"
source    "extr.sh"   "${dest}"   "${src}"    "Sardi Flat/scalable/devices/*"
source    "extr.sh"   "${dest}"   "${src}"    "Sardi Flat Black/*"
###############################################################################
