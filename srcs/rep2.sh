#!/usr/bin/env bash
############################################################
while read item
do
  eval    "read -a item <<< ${item}"
  declare "sed -i -e /${item[0]}=/ s/=.*/=${item[1]}/ ${1?}"
  echo    "${1?}: replace ${item[0]} value by ${item[1]}"
done    < "${2?}"
############################################################
