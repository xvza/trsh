#!/usr/bin/env bash
###########################################################
set -u
###########################################################
declare   "arg=${WIDTH}x${HEIGHT}?nature,animals"
declare   "url=https://source.unsplash.com/${arg}"
declare   "img=${SKEL}/Picture/background.jpg"
###########################################################
eval      "wget -P$(dirname ${img}) ${url} -O${img}"
###########################################################
