# Luke's build of dwm

## FAQ

> What are the bindings?

This is suckless, mmmbud, the source code is the documentation! Check out [config.h](config.h).

Okay, okay, actually I keep a readme in `larbs.mom` for my whole system, including the binds here.
Press `super+F1` to view it in dwm (zathura is required for that binding).
I haven't kept `man dwm`/`dwm.1` updated though. PRs welcome on that, lol.

## Patches and features

- Clickable statusbar with my build of [dwmblocks](https://github.com/lukesmithxyz/dwmblocks).
- Reads xresources colors/variables (i.e. works with `pywal`, etc.).
- scratchpad: Accessible with mod+shift+enter.
- New layouts: bstack, fibonacci, deck, centered master and more. All bound to keys `super+(shift+)t/y/u/i`.
- True fullscreen (`super+f`) and prevents focus shifting.
- Windows can be made sticky (`super+s`).
- stacker: Move windows up the stack manually (`super-K/J`).
- shiftview: Cycle through tags (`super+g/;`).
- vanitygaps: Gaps allowed across all layouts.
- swallow patch: if a program run from a terminal would make it inoperable, it temporarily takes its place to save space.

## Please install `libxft-bgra`!

This build of dwm does not block color emoji in the status/info bar, so you must install [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) from the AUR, which fixes a libxft color emoji rendering problem, otherwise dwm will crash upon trying to render one. Hopefully this fix will be in all libxft soon enough.

Setting up Dwm with lightdm

1. create an executable script(startdwm) in /usr/local/bin

################################################## Start

#!/bin/sh

xset fp rehash &
xset fp+ /home/$USER/.local/share/fonts &
xset fp+ /usr/share/fonts/joypixels &

xrdb /home/$USER/.Xresources

# remaps the caps lock to esc
/usr/local/bin/remaps

# disables the laptop monitor
xrandr --output eDP1 --off --output HDMI --primary &
#nm-applet &
numlockx on &
compton --config /home/$USER/.config/compton.conf &
#xcompmgr &

# notification center
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
dunst &
#xfce4-power-manager &

#volumicons &
nitrogen --restore &
alacritty &
slstatus &
unclutter &
xset r rate 300 50 &

## to resolve a java related bug
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
# put all user scripts at the path
export PATH=$PATH:/home/$USER/.local/bin

wmname LG3D &
exec dwm > /dev/null

################################################## End

1. Create an desktop file (dwm.desktop) in /usr/share/xsession

################################################## Start

[Desktop Entry]
Name=dwm
Comment=dynamic tiling window manager
Exec=/usr/local/bin/startdwm
#TryExec=i3
Type=Application
X-LightDM-DesktopName=dwm
DesktopNames=dwm
Keywords=tiling;dwm;windowmanager;window;manager;

################################################## Start
