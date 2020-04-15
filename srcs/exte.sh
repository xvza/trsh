#!/usr/bin/env bash
##########################################################
declare   "urls=https://extensions.gnome.org/download-extension"
declare   "dest=/usr/share/gnome-shell/extensions"
##########################################################
source    "moun.sh"  "list"
##########################################################
while read item
do
  read    "-a"  "item" <<< "${item}"
  declare "url=${urls}/${item[0]}.shell-extension.zip"
  declare "src=${TMPDIR}/${item[0]}.zip"
  declare "dir=$(dirname ${0})"
  source  "net0.sh"  "${src}"      "${url}?version_tag=${item[1]}"
  source  "extr.sh"  "${dest}/${item[0]}"     "${src}"    "[a-z]*"
done       < "${dire[list]}/exte/add"
##########################################################
