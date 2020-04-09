#!/usr/bin/env bash
###########################################################
declare   "dirs=$(dirname ${BASH_SOURCE[0]})/"
source    "${dirs}util/dirs.sh"
###########################################################
declare   "dir=${HOME}/.meteor/"
declare   "url=https://install.meteor.com/"
###########################################################
[[ -d ${dir} ]] &&                                        \
echo      "${dir} already exist"
###########################################################
[[ -d ${dir} ]] ||                                        \
declare   "bin=$(curl ${url}|sh)"
###########################################################
declare   "dir=${HOME}/${1?}/"
###########################################################
source    "${dirs[util]}moun.sh"  "devs"
source    "${dirs[util]}dir1.sh"  "${dir}"  "${dirs[devs]}"
###########################################################
declare   "bin=$(meteor create --bare ${dir})"
echo      "${bin}"
cd        "${dir}"
###########################################################
