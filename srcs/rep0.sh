#!/usr/bin/env bash
#################################################
declare   "v=${1?source directory}"
declare   "v=${2?input text}"
declare   "v=${3?output text}"
#################################################
declare   "file=$(find ${1} -mindepth 1 -type f)"
declare   "bin=$(sed -i s+${2}+${3}+g ${file})"
declare   "str=sed: replace ${2} by ${3} in ${1}"
#################################################
[[ -z ${bin} ]]                                 \
&& echo   "${str}"
#################################################
[[ -n ${bin} ]]                                 \
&& echo   "${bin}"
#################################################
