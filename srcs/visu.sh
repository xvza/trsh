#!/usr/bin/env bash
############################################################################
source    "moun.sh"  "list"
source    "moun.sh"  "trsh"
############################################################################
source    "net1.sh"  "${THEMES}/Nordic"   "$(cat ${dire[list]}/nord/themes)"
source    "net1.sh"  "${ICONS}/Zafiro"    "$(cat ${dire[list]}/nord/icons)"
############################################################################
