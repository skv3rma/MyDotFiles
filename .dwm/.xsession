#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#



## to resolve a java related bug
_JAVA_AWT_WM_NONREPARENTING=1

QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname
_JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications in dwm
SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
# put all user scripts at the path
PATH="$PATH":${HOME}/.local/bin
PATH="$PATH":${HOME}/.local/bin/statusbar
#volumicons &
#dwmblocks &
#slstatus &
wmname LG3D &

notify-send "Greeting" "Welcome Sunil !" &
