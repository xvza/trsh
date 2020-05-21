#!/usr/bin/env bash
###########################################################
source    "hexa.sh"  "share"
###########################################################
declare   "hb=${hexa[background]}"
declare   "hp=${hexa[primary]}"
declare   "hf=${hexa[foreground]}"
declare   "hr=${hexa[border]}"
###########################################################
echo      "rofi.color-window  :${hb},${hr},${hp}"
echo      "rofi.color-normal  :${hb},${hf},${hb},${hp},${hb}"
echo      "rofi.color-active  :${hb},${hf},${hb},${hp},${hb}"
###########################################################
