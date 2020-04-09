#!/usr/bin/env bash
##########################################################
declare   "dest=/usr/share/gnome-shell/extensions/"
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/../"
declare   "list=${dirs}list/exte"
##########################################################
source    "${dirs}../srcs/util/dirs.sh"
##########################################################
echo      "$(cat ${list})"

source    "${vali}head.sh"
source    "${vali}core.sh"    "${1}"    "tmp  directory :"
source    "${vali}core.sh"    "${3}"    "exte directory :"
source    "${vali}foot.sh"
##########################################################
#while read item
#do
#  read  -a  "item" <<< "${item}"
#  url="https://extensions.gnome.org/download-extension/${item[0]}.shell-extension.zip"
#  src="${1?}${item[0]}.zip"
#  dir="$(dirname ${0})"
#  source "${2?}net0.sh"    "${src}"      "${url}?version_tag=${item[1]}"
#  source "${2?}extr.sh"    "${dest}${item[0]}"     "${src}"    "[a-z]*"
#done < "${3?}add"
##########################################################
