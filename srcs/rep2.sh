#!/usr/bin/env bash
###################################################################
while read item
do
  declare "bin=$(read -a item <<< ${item})"
  declare "str=${1?}: replace ${item[0]} value by ${item[1]}"
  declare "bin=$(sed -i -e /${item[0]}=/ s/=.*/=${item[1]}/ ${1?})"
  echo    "${str}"
done    < "${2?}"
###################################################################
