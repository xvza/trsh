#!/usr/bin/env bash
###########################################################
declare   "-A"  "color"
declare   "-A"  "share"
declare   "-a"  "order"
###########################################################
declare   "color[black]=2e3440"
declare   "color[red]=bf616a"
declare   "color[green]=a3be8c"
declare   "color[yellow]=ebcb8b"
declare   "color[blue]=5e81ac"
declare   "color[magenta]=b48ead"
declare   "color[cyan]=8fbcbb"
declare   "color[white]=d8dee9"
declare   "share[background]=3b4252"
###########################################################
declare   "share[border]=${color[black]}"
declare   "share[foreground]=${color[white]}"
declare   "share[primary]=${color[$COLOR]}"
declare   "share[warning]=${color[yellow]}"
declare   "share[alert]=${color[red]}"
###########################################################
declare   "order+=('${color[black]}')"
declare   "order+=('${color[red]}')"
declare   "order+=('${color[green]}')"
declare   "order+=('${color[yellow]}')"
declare   "order+=('${color[blue]}')"
declare   "order+=('${color[magenta]}')"
declare   "order+=('${color[cyan]}')"
declare   "order+=('${color[white]}')"
###########################################################
