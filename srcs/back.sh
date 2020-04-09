#!/usr/bin/env bash

. "${2?}vali.sh"           "${1}"                        "1 : tmp  directory :"
. "${2?}vali.sh"           "${2}"                        "2 : util directory :"

dest="/usr/share/backgrounds/mojave/"
src="${1?}mojave.zip"

. "${2?}net0.sh"        "${src}"      "https://files.rb.gd/mojave_dynamic.zip"
. "${2?}extr.sh"        "${dest}"     "${src}"    "mojave*"
