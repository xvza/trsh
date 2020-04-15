#!/usr/bin/env bash
######################################################
declare   "dest=/usr/share/backgrounds/mojave/"
declare   "src=${TMPDIR}mojave.zip"
declare   "url=https://files.rb.gd/mojave_dynamic.zip"
######################################################
source    "net0.sh"  "${src}"   "${url}"
source    "extr.sh"  "${dest}"  "${src}"  "mojave*"
######################################################
