#!/usr/bin/env bash
###########################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/../"
source    "${dirs}util/dirs.sh"
###########################################################
source    "${star}pass.sh"
###########################################################
declare   "opts=device wifi connect ${ssid} password ${key}"
declare   "bin=$(nmcli ${opts})"
source    "${util}prin.sh"    "${bin}"
###########################################################
