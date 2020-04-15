#!/usr/bin/env bash
#######################################
source    "moun.sh"  "list"
#######################################
declare   "file=${dire[list]}/cron/add"
eval      "dos2unix ${file}"
#######################################
declare   "list=$(echo $(cat ${file}))"
eval      "run-parts ${list}"
#######################################
