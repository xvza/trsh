#!/usr/bin/env bash
##############################################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/../"
source    "${dirs}util/dirs.sh"
##############################################################################
declare   "dest=/usr/share/icons/"
declare   "src=${1-/tmp/}Capitaine-cursors/"
##############################################################################
source    "${vali}head.sh"
source    "${vali}core.sh"   "${src}"    "src  directory  :"    false
source    "${vali}core.sh"   "${dest}"   "dest directory  :"
source    "${vali}foot.sh"
##############################################################################
declare   "url=https://github.com/keeferrourke/capitaine-cursors"
source    "${util}net1.sh"  "${src}"  "${url}"
source    "${root}sudo.sh"  "${util}dir0.sh"  "${dest}"  "${src}src/svg/light"
##############################################################################
