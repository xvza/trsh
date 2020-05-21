#!/usr/bin/env bash
###########################################################
alt + Return
#  rofi-sensible-terminal
  tilix
alt + {eacute,quotedbl,apostrophe,parenleft,minus,egrave,underscore,ccedilla,agrave}
  mime.sh {inode/directory,text/plain,x-scheme-handler/http,x-scheme-handler/mailto,x-scheme-handler/note,text/x-opml,x-scheme-handler/magnet,audio/ogg,video/ogg}
super + eacute
  sudo.sh /var/http/srcs/util/mime.sh inode/directory

alt + u
  musc.sh Music
alt + k
  musc.sh 0
alt + o
  musc.sh 1

alt + Delete
  clea.sh
alt + d
  rofi -show
alt + e
  systemctl reboot

alt + c
  pkill -USR1 sxhkd
alt + v
  term.sh

super + s
  xdotool.sh close
super + Down
  xdotool.sh size x 50%
super + Up
  xdotool.sh size 100% 92%
super + Left
  xdotool.sh move 0 y
super + Right
  xdotool.sh move $((${WIDTH}/2)) y

XF86Audio{Lower,Raise}Volume
  amixer set Master 6%{-,+}
XF86AudioMute
  amixer set Master toggle
XF86MonBrightness{Up,Down}
  light -{A,U} 6
XF86ScreenSaver
  light -S 0
XF86Sleep
  systemctl suspend
XF86PowerOff
  systemctl poweroff
###########################################################
