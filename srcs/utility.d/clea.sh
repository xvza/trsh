#!/usr/bin/env bash
###########################################################
function  delete()                                        {
###########################################################
  eval      "find ${1} -mindepth 1 ${@:2} -${FUNCNAME[0]}"
###########################################################
                                                          }
###########################################################
eval      "gpaste-client empty"
eval      "yay -Scc --noconfirm 2> /dev/null"
eval      "dnf clean all 2> /dev/null"
###########################################################
eval      "dconf reset -f /"
eval      "dconf load / < $(find ${SHRD}/dconf -type f | head -1)"
eval      "dconf load / < $(find ${SHRD}/dconf -type f | tail -1)"
###########################################################
eval      "delete ${HOME}/.local/share/epiphany ! -name *.gvdb"
eval      "delete ${HOME}/.local/share -name *.xbel"
eval      "delete ${HOME}/.cache"
###########################################################
source    "download.sh"
###########################################################
