#!/usr/bin/env bash
###############################################################################
declare   "dest=/usr/share/themes/Qogir-dark"
declare   "src=${TMPDIR}/Qogir-theme"
###############################################################################
source    "head.sh"
source    "core.sh"  "${src}"   "src  directory   :"  false
source    "core.sh"  "${dest}"  "dest  directory  :"  false
source    "foot.sh"
source    "net1.sh"  "${src}"   "https://github.com/vinceliuice/Qogir-theme"
###############################################################################
declare   "src=${src}/src"
declare   "tmp=gtk-2.0/"
###############################################################################
eval      "sudo adds.sh ${dest}/${tmp}assets"
eval      "sudo dir0.sh ${dest}/${tmp}gtkrc ${src}/${tmp}theme/gtkrc-dark"
eval      "sudo dir1.sh ${dest}/${tmp}assets ${src}/${tmp}assets/assets-dark"
eval      "sudo dir0.sh ${dest}/${tmp} ${src}/${tmp}apps.rc"
eval      "sudo dir0.sh ${dest}/${tmp} ${src}/${tmp}main.rc"
###############################################################################
declare   "tmp=gtk-3.0/"
###############################################################################
eval      "sudo adds.sh ${dest}/${tmp}assets"
eval      "sudo dir0.sh ${dest}/${tmp}gtk.css ${src}/${tmp}theme/gtk-dark.css"
eval      "sudo dir1.sh ${dest}/${tmp}assets ${src}/${tmp}assets/assets-common"
eval      "sudo dir1.sh ${dest}/${tmp}assets ${src}/${tmp}assets/assets"
###############################################################################
