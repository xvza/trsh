#!/usr/bin/env bash
###########################################################
source    "hexa.sh"  "order"
###########################################################
declare   "key=palette"
declare   "hash=2b7c4080-0ddd-46c5-8f23-563fd3ba789d"
declare   "path=/com/gexperts/Tilix/profiles/${hash}/"
declare   "cmds=gsettings set"
declare   "schema=com.gexperts.Tilix.Profile"
###########################################################
declare   "${key}=$(echo ${hexa[@]})"
declare   "${key}='${!key// /\',\'}'"
declare   "${key}=${!key//\'/\\\'}"
declare   "${key}=${!key},${!key}"
###########################################################
eval      "${cmds} ${schema}:${path} ${key} [${!key}]"
###########################################################
