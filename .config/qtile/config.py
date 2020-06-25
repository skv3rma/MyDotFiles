# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


import os
import re
import socket
import subprocess
from libqtile.config import Drag, Key, Screen, Group, Drag, Click, Rule
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from libqtile.widget import Spacer
import arcobattery
from scratchpad import Scratchpad, DropDown_Keys


## Flow of the file
## 0. Mod/Super/Alt key setting
## 1. Basic Keybinding
## 2. Group Init
## 3. Group Keybinding
## 4. Scratchpad Groups
## 5. Dropdown Keybindings

# mod4 or mod = super key
mod = "mod4"
mod1 = "alt"
mod2 = "control"
home = os.path.expanduser('~')



@lazy.function
def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)


@lazy.function
def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)


# 1 : Basic Keybinding : Start
keys = [

    # FUNCTION KEYS

    # Key([], "F12", lazy.spawn('xfce4-terminal --drop-down')),
    # Key([], "F11", lazy.spawn('xfce4-terminal --tab --drop-down --title "ViFM" -e vifm --hold')),
    # Key([], "F10", lazy.spawn('xfce4-terminal --tab --drop-down --title "YTop" -e ytop --hold')),
    # Key([], "F9", lazy.spawn('xfce4-terminal --tab --drop-down --title "Terminal" -e tmux --active-tab --hold')),

    # SUPER + FUNCTION KEYS

    ### Rofi : various modes
    Key([mod], "b", lazy.spawn('firefox')),
    Key([mod], "d", lazy.spawn('rofi -show combi')),
    Key([mod,"shift"], "d", lazy.spawn('rofi -show run')),
    # Key([mod, "shift"], "d", lazy.spawn("dmenu_run -i -nb '#3b4252' -nf '#88c0d0' -sb '#88c0d0' -sf '#191919' -fn 'JetBrainsMono:bold:pixelsize=20'")),
    Key([mod], "semicolon", lazy.spawn('rofi -show window')),

    Key([mod], "e", lazy.spawn('alacritty -e nvim')),
    # TODO : Stripped dowm version of nvim lite
    # Key([mod,"shift"], "e", lazy.spawn('subl3')),
    # Key([mod], "c", lazy.spawn('conky-toggle')),

    Key([mod], "f", lazy.window.toggle_fullscreen()),
    # Key([mod], "g", lazy.window.toggle_fullscreen()),


    # Key([mod], "m", lazy.spawn('pragha')),
    Key([mod], "q", lazy.window.kill()),
    Key([mod,"shift"], "q", lazy.spawn("xkill")),
    # Key([mod], "s", lazy.spawn('surf')),
    # Key([mod], "r", lazy.spawn('rofi-theme-selector')),
    # Key([mod], "p", lazy.spawn('pavucontrol')),
    Key([mod,"shift"], "p", lazy.spawn('pulseaudio-equalizer-gtk')),
    Key([mod,"control"], "p", lazy.spawn('st -n alsamixer -e alsamixer')),
    # Key([mod], "w", lazy.spawn('vivaldi-stable')),

    Key([mod, "shift"], "r", lazy.restart()),
    Key([mod, "control"], "r", lazy.restart()),
    Key([mod], "s", lazy.spawn('surf')),
    Key([mod], "v", lazy.spawn('st -n vis -e vis')),
    Key([mod], "w", lazy.spawn('firefox')),

    Key([mod], "x", lazy.spawn('arcolinux-logout')),
    Key([mod,"shift"], "x", lazy.spawn('betterlockscreen --lock blur')),

    Key([mod], "Escape", lazy.spawn('xkill')),
    Key([mod,"shift"], "Escape", lazy.spawn('xfce4-taskmanager')),

    Key([mod], "Return", lazy.spawn('alacritty')),
    Key([mod], "KP_Enter", lazy.spawn('alacritty')),
    Key([mod], "F1", lazy.spawn('st -n tmux -e tmux')),
    Key([mod], "F2", lazy.spawn('firefox')),
    Key([mod], "F3", lazy.spawn('subl3')),
    Key([mod], "F4", lazy.spawn('pcmanfm')),
    Key([mod], "F5", lazy.spawn('nitrogen')),
    Key([mod], "F6", lazy.spawn('SpringToolSuite4')),
    Key([mod], "F7", lazy.spawn('virtualbox')),
    Key([mod], "F8", lazy.spawn('celluloid')),
    Key([mod], "F9", lazy.spawn('simplescreenrecorder')),
    Key([mod], "F10", lazy.spawn("telegram-desktop")),


    # SUPER + SHIFT KEYS

    # Key([mod, "shift"], "Return", lazy.spawn('st -n st_vifm -e vifm')),
    # Key([mod, "shift"], "q", lazy.window.kill()),
    # Key([mod, "shift"], "s", lazy.spawn('simplescreenrecorder')),
    # Key([mod, "shift"], "x", lazy.shutdown()),

    # CONTROL + ALT KEYS

    # Key(["mod1", "control"], "Next", lazy.spawn('conky-rotate -n')),
    # Key(["mod1", "control"], "Prior", lazy.spawn('conky-rotate -p')),
    # Key(["mod1", "control"], "a", lazy.spawn('xfce4-appfinder')),
    # Key(["mod1", "control"], "b", lazy.spawn('thunar')),
    # Key(["mod1", "control"], "c", lazy.spawn('catfish')),
    # Key(["mod1", "control"], "e", lazy.spawn('arcolinux-tweak-tool')),
    Key(["mod1", "control"], "f", lazy.spawn('firefox')),
    Key(["mod1", "control"], "g", lazy.spawn(
        'chromium -no-default-browser-check')),
    Key(["mod1", "control"], "i", lazy.spawn('nitrogen')),
    Key(["mod1", "control"], "k", lazy.spawn('arcolinux-logout')),
    Key(["mod1", "control"], "l", lazy.spawn('arcolinux-logout')),
    # Key(["mod1", "control"], "m", lazy.spawn('xfce4-settings-manager')),
    Key(["mod1", "control"], "o", lazy.spawn(
        home + '/.config/qtile/scripts/picom-toggle.sh')),
    Key(["mod1", "control"], "p", lazy.spawn('pamac-manager')),
    # Key(["mod1", "control"], "r", lazy.spawn('rofi-theme-selector')),
    # Key(["mod1", "control"], "s", lazy.spawn('spotify')),
    Key(["mod1", "control"], "t", lazy.spawn('st')),
    Key(["mod1", "control"], "u", lazy.spawn('pavucontrol')),
    Key(["mod1", "control"], "v", lazy.spawn('vivaldi-stable')),
    # Key(["mod1", "control"], "w", lazy.spawn('arcolinux-welcome-app')),
    Key(["mod1", "control"], "Return", lazy.spawn('termite')),

    # ALT + ... KEYS

    Key(["mod1"], "f", lazy.spawn('variety -f')),
    Key(["mod1"], "h", lazy.spawn('st -n htop -e htop')),
    Key(["mod1"], "y", lazy.spawn('st -n ytop -e ytop')),

    # VARIETY KEYS WITH PYWAL

    # CONTROL + SHIFT KEYS

    # Key([mod2, "shift"], "Escape", lazy.spawn('xfce4-taskmanager')),

    # SCREENSHOTS

    # Key([], "Print", lazy.spawn("scrot 'ArcoLinux-%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f $$(xdg-user-dir PICTURES)'")),
    Key([], "Print", lazy.spawn('xfce4-screenshooter')),
    # Key([mod2, "shift"], "Print", lazy.spawn('gnome-screenshot -i')),

    # MULTIMEDIA KEYS

    # INCREASE/DECREASE BRIGHTNESS
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 5")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 5")),

    # INCREASE/DECREASE/MUTE VOLUME
    Key(["mod1"], "F2", lazy.spawn("amixer -q set Master toggle")),
    Key(["mod1", "shift"], "F1", lazy.spawn("amixer -q set Master 5%-")),
    Key(["mod1"], "F1", lazy.spawn("amixer -q set Master 5%+")),

    ##########################################################################
    #                       MULTIMEDIA KEYS                                  #
    ##########################################################################
    # Key([], "XF86AudioMute", lazy.spawn("amixer -q set Master toggle")),
    # Key([], "XF86AudioLowerVolume", lazy.spawn("amixer -q set Master 5%-")),
    # Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer -q set Master 5%+")),

    # Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    # Key([], "XF86AudioNext", lazy.spawn("playerctl next")),
    # Key([], "XF86AudioPrev", lazy.spawn("playerctl previous")),
    # Key([], "XF86AudioStop", lazy.spawn("playerctl stop")),

    #    Key([], "XF86AudioPlay", lazy.spawn("mpc toggle")),
    #    Key([], "XF86AudioNext", lazy.spawn("mpc next")),
    #    Key([], "XF86AudioPrev", lazy.spawn("mpc prev")),
    #    Key([], "XF86AudioStop", lazy.spawn("mpc stop")),

    # QTILE LAYOUT KEYS
    Key([mod], "n", lazy.layout.normalize()),
    Key([mod], "space", lazy.next_layout()),

    # CHANGE FOCUS
    Key([mod], "Up", lazy.layout.up()),
    Key([mod], "Down", lazy.layout.down()),
    Key([mod], "Left", lazy.layout.left()),
    Key([mod], "Right", lazy.layout.right()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),


    # RESIZE UP, DOWN, LEFT, RIGHT
    Key([mod, "control"], "l",
        lazy.layout.grow_right(),
        lazy.layout.grow(),
        lazy.layout.increase_ratio(),
        lazy.layout.delete(),
        ),
    Key([mod, "control"], "Right",
        lazy.layout.grow_right(),
        lazy.layout.grow(),
        lazy.layout.increase_ratio(),
        lazy.layout.delete(),
        ),
    Key([mod, "control"], "h",
        lazy.layout.grow_left(),
        lazy.layout.shrink(),
        lazy.layout.decrease_ratio(),
        lazy.layout.add(),
        ),
    Key([mod, "control"], "Left",
        lazy.layout.grow_left(),
        lazy.layout.shrink(),
        lazy.layout.decrease_ratio(),
        lazy.layout.add(),
        ),
    Key([mod, "control"], "k",
        lazy.layout.grow_up(),
        lazy.layout.grow(),
        lazy.layout.decrease_nmaster(),
        ),
    Key([mod, "control"], "Up",
        lazy.layout.grow_up(),
        lazy.layout.grow(),
        lazy.layout.decrease_nmaster(),
        ),
    Key([mod, "control"], "j",
        lazy.layout.grow_down(),
        lazy.layout.shrink(),
        lazy.layout.increase_nmaster(),
        ),
    Key([mod, "control"], "Down",
        lazy.layout.grow_down(),
        lazy.layout.shrink(),
        lazy.layout.increase_nmaster(),
        ),


    # FLIP LAYOUT FOR MONADTALL/MONADWIDE
    Key([mod, "shift"], "f", lazy.layout.flip()),

    # FLIP LAYOUT FOR BSP
    Key([mod, "mod1"], "k", lazy.layout.flip_up()),
    Key([mod, "mod1"], "j", lazy.layout.flip_down()),
    Key([mod, "mod1"], "l", lazy.layout.flip_right()),
    Key([mod, "mod1"], "h", lazy.layout.flip_left()),

    # MOVE WINDOWS UP OR DOWN BSP LAYOUT
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),

    # MOVE WINDOWS UP OR DOWN MONADTALL/MONADWIDE LAYOUT
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "Left", lazy.layout.swap_left()),
    Key([mod, "shift"], "Right", lazy.layout.swap_right()),

    # TOGGLE FLOATING LAYOUT
    Key([mod, "shift"], "space", lazy.window.toggle_floating()), ]

### Basic Keybinding : End


### 2. Groups Init
groups = []

group_names = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ]

group_labels = [" :1 ", " :2 ", " :3 ", " :4 "," :5 ", " :6 ", " :7 ", " :8 ", " :9 ", " :10 ", ]
#group_labels = ["Web", "Edit/chat", "Image", "Gimp", "Meld", "Video", "Vb", "Files", "Mail", "Music",]

group_layouts = ["monadtall", "monadtall", "monadtall", "monadtall",
                 "monadtall", "monadtall", "monadtall", "max", "matrix", "matrix", ]
#group_layouts = ["monadtall", "matrix", "monadtall", "bsp", "monadtall", "matrix", "monadtall", "bsp", "monadtall", "monadtall",]


# Group Init
for i in range(len(group_names)):
    groups.append(
        Group(
            name=group_names[i],
            layout=group_layouts[i].lower(),
            label=group_labels[i],
        ))


### 3. Group Related Keybinding : Start
for group in groups:
    keys.extend([

        # CHANGE WORKSPACES
        Key([mod], group.name, lazy.group[group.name].toscreen()),
        # Key([mod], "Tab", lazy.screen.next_group()),
        Key(["mod1"], "Tab", lazy.screen.next_group()),
        Key(["mod1", "shift"], "Tab", lazy.screen.prev_group()),
        Key(["control"], "Tab", lazy.screen.prev_group()),
        # MOVE WINDOW TO SELECTED WORKSPACE 1-10 AND STAY ON WORKSPACE
        #Key([mod, "shift"], i.name, lazy.window.togroup(i.name)),
        # MOVE WINDOW TO SELECTED WORKSPACE 1-10 AND FOLLOW MOVED WINDOW TO WORKSPACE
        Key([mod, "shift"], group.name, lazy.window.togroup(
            group.name), lazy.group[group.name].toscreen()),
    ])

### Start : Scratchpad
obj_scratchpad = Scratchpad()
obj_dd_keys = DropDown_Keys()
# Append
groups += obj_scratchpad.init_scratchpad()
keys += obj_dd_keys.init_dropdown_keybindings()

## Toggle between last two groups
keys.append(Key([mod], "Tab", lazy.screen.togglegroup()))

###  End : Scratchpads


def init_layout_theme():
    return {"margin": 7,
            "border_width": 2,
            "border_focus": "#d08770",
            "border_normal": "#161616"
            }


layout_theme = init_layout_theme()


layouts = [
    layout.MonadTall(margin=7, border_width=2,
                     border_focus="#d08770", border_normal="#161616", ratio=0.55),
    layout.MonadWide(margin=7, border_width=2,
                     border_focus="#d08770", border_normal="#161616"),
    layout.Matrix(**layout_theme),
    layout.Bsp(**layout_theme),
    layout.Floating(**layout_theme),
    layout.RatioTile(**layout_theme),
    layout.Max(**layout_theme)
]

# COLORS FOR THE BAR


def init_colors():
    return [["#2e3440", "#2e3440"],  # color 0
            ["#3b4252", "#3b4252"],  # color 1
            ["#e5e9f0", "#e5e9f0"],  # color 2
            ["#BBDEFB", "#BBDEFB"],  # color 3
            ["#88c0d0", "#88c0d0"],  # color 4
            ["#eceff4", "#eceff4"],  # color 5
            ["#8fbcbb", "#8fbcbb"],  # color 6
            ["#CFD8DC", "#CFD8DC"],  # color 7
            ["#5e81ac", "#5e81ac"],  # color 8
            ["#81a1c1", "#81a1c1"],  # color 9
            ["#d08770", "#d08770"],  # color 10
            ["#4c566a", "#4c566a"]   # color 11
            ]  # color 10


colors = init_colors()


# WIDGETS FOR THE BAR

def init_widgets_defaults():
    return dict(font="IBM Plex Sans Medium",
                fontsize=16,
                padding=2,
                background=colors[1])


widget_defaults = init_widgets_defaults()


def init_widgets_list():
    prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())
    widgets_list = [
        widget.GroupBox(font="FontAwesome",
                        fontsize=18,
                        margin_y=4,
                        margin_x=0,
                        padding_y=6,
                        padding_x=6,
                        borderwidth=0,
                        disable_drag=True,
                        active=colors[5],
                        inactive=colors[9],
                        hide_unused=True,
                        rounded=False,
                        highlight_method="block",
                        this_current_screen_border=colors[10],
                        foreground=colors[5],
                        background=colors[0]
                        ),
        widget.TextBox(
            font="FontAwesome",
            fontsize=18,
            text="|",
            padding=2,
            foreground=colors[4],
            background=colors[1]
        ),
        widget.WindowName(font="IBM Plex Mono Medium Italic",
                          fontsize=18,
                          foreground=colors[4],
                          background=colors[1],
                          ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0be",
            foreground=colors[6],
            background=colors[1],
            padding=0,
            fontsize=26
        ),
        widget.TextBox(
            font="FontAwesome",
            text=" ",
            foreground=colors[1],
            background=colors[6],
            padding=0,
            fontsize=18
        ),
        widget.Net(
            font="IBM Plex Sans Medium",
            fontsize=16,
            interface="wlp3s0",
            format="{down}↓↑{up}",
            foreground=colors[1],
            background=colors[6],
            use_bits=False,
            padding=6,
        ),
        # widget.NetGraph(
        #          font="Noto Sans",
        #          fontsize=12,
        #          bandwidth="down",
        #          interface="auto",
        #          fill_color = colors[8],
        #          foreground=colors[2],
        #          background=colors[1],
        #          graph_color = colors[8],
        #          border_color = colors[2],
        #          padding = 0,
        #          border_width = 1,
        #          line_width = 1,
        #          ),

        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[6],
            background=colors[7],
            padding=0,
            fontsize=26
        ),
        widget.TextBox(
            font="FontAwesome",
            text="",
            foreground=colors[1],
            background=colors[7],
            padding=0,
            fontsize=18
        ),
        # # do not activate in Virtualbox - will break qtile
        widget.ThermalSensor(
            fontsize=16,
            foreground=colors[1],
            foreground_alert=colors[10],
            background=colors[7],
            metric=True,
            padding=6,
            threshold=50,
            update_interval=2
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[7],
            background=colors[3],
            padding=0,
            fontsize=26
        ),
        widget.TextBox(
            font="FontAwesome",
            text="  ",
            foreground=colors[1],
            background=colors[3],
            padding=0,
            fontsize=18
        ),
        widget.CPUGraph(
            border_color=colors[2],
            fill_color=colors[1],
            graph_color=colors[1],
            background=colors[3],
            border_width=0,
            line_width=1,
            core="all",
            type="linefill",
            padding=6
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[3],
            background=colors[8],
            padding=0,
            fontsize=26
        ),
        widget.TextBox(
            font="FontAwesome",
            text="  ",
            foreground=colors[1],
            background=colors[8],
            padding=0,
            fontsize=18
        ),
        widget.Memory(
            font="IBM Plex Sans Medium",
            format='{MemUsed}M/{MemTotal}M',
            update_interval=1,
            fontsize=16,
            foreground=colors[1],
            background=colors[8],
            padding=6,
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[8],
            background=colors[9],
            padding=0,
            fontsize=26
        ),
        widget.TextBox(
            font="FontAwesome",
            text="  ",
            foreground=colors[1],
            background=colors[9],
            padding=0,
            fontsize=18
        ),
        widget.Clock(
            foreground=colors[1],
            background=colors[9],
            fontsize=16,
            format="%d-%m-%Y | %H:%M",
            padding=6
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[9],
            background=colors[3],
            padding=0,
            fontsize=26
        ),
        arcobattery.BatteryIcon(
            padding=0,
            scale=0.7,
            y_poss=3,
            theme_path=home + "/.config/qtile/icons/battery_icons_horiz",
            update_interval=5,
            background=colors[3]
        ),
        widget.Battery(
            energy_now_file="charge_now",
            energy_full_file="charge_full",
            power_now_file="current_now",
            charge_char="",
            discharge_char="",
            format='{char} {percent:2.0%}',
            background=colors[3],
            foreground=colors[1],
            padding=2
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[3],
            background=colors[4],
            padding=0,
            fontsize=26
        ),
       widget.CurrentLayout(
            font="IBM Plex Sans Medium",
            fontsize=16,
            foreground=colors[1],
            background=colors[4]
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[4],
            background=colors[1],
            padding=0,
            fontsize=26
        ),
        widget.Wlan(
            interface="wlp3s0",
            format='{essid}'
        ),
        widget.Systray(
            background=colors[1],
            icon_size=20,
            padding=6
        ),
        widget.TextBox(
            font="FontAwesome",
            text="\uE0b8",
            foreground=colors[1],
            background=colors[1],
            padding=0,
            fontsize=26
        )

    ]
    return widgets_list


widgets_list = init_widgets_list()


def init_widgets_screen1():
    widgets_screen1 = init_widgets_list()
    return widgets_screen1


def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2


widgets_screen1 = init_widgets_screen1()
widgets_screen2 = init_widgets_screen2()

### Screens
def init_screens():
    return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), size=28))]
    # return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), size=28)),
    #         Screen(top=bar.Bar(widgets=init_widgets_screen2(), size=28))]


screens = init_screens()


# MOUSE CONFIGURATION
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size())
]

dgroups_key_binder = None
dgroups_app_rules = []

# ASSIGN APPLICATIONS TO A SPECIFIC GROUPNAME
# BEGIN

@hook.subscribe.client_new
def assign_app_group(client):
    d = {}
    #########################################################
    ################ assgin apps to groups ##################
    #########################################################
    d["1"] = ["termite","Termite"]
    d["2"] = ["Navigator","navigator","firefox","Firefox", "chromium", "Chromium"]
    d["3"] = ["subl3","Subl3","Geany","geany"]
    d["4"] = ["pcmanfm", "Pcmanfm", "Thunar", "thunar"]
    d["5"] = ["Gimp-2.10", "gimp-2.10", "Inkscape" "org.inkscape.Inkscape","Shotwell","shotwell", "Shotcut","shotcut"]
    d["6"] = ["eclipse","Eclipse", "Apache Netbeans IDE 11.2", "apache netbeans","Spring Tool Suite 4","CodeReady","codeReady"]
    d["7"] = ["VirtualBox Manager", "VirtualBox Machine", "Vmplayer",
              "virtualbox manager", "virtualbox machine", "vmplayer", ]
    d["8"] = ["Vlc", "vlc", "Mpv", "mpv","MPlayer","mPlayer","io.github.celluloid_player.Celluloid","Io.github.celluloid_player.Celluloid"]
    d["9"] = ["Evolution", "Geary", "Mail", "Thunderbird",
              "evolution", "geary", "mail", "thunderbird","telegram-desktop","TelegramDesktop"]
    d["0"] = ["qbittorrent","qBittorrent","Transmission","transmission","transmission-qt"]
     ##########################################################
    wm_class = client.window.get_wm_class()[0]

    for i in range(len(d)):
        if wm_class in list(d.values())[i]:
            group = list(d.keys())[i]
            client.togroup(group)
            # INFO : causes propblems when an apps open pop window from within
            # client.group.cmd_toscreen()

# END
# ASSIGN APPLICATIONS TO A SPECIFIC GROUPNAME


main = None


@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/scripts/autostart.sh'])


@hook.subscribe.startup
def start_always():
    # Set the cursor to something sane in X
    subprocess.Popen(['xsetroot', '-cursor_name', 'left_ptr'])


@hook.subscribe.client_new
def set_floating(window):
    if (window.window.get_wm_transient_for()
            or window.window.get_wm_type() in floating_types):
        window.floating = True


floating_types = ["notification", "toolbar", "splash", "dialog"]


follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    {'wmclass': 'Arcolinux-welcome-app.py'},
    {'wmclass': 'Arcolinux-tweak-tool.py'},
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},
    {'wmclass': 'makebranch'},
    {'wmclass': 'maketag'},
    {'wmclass': 'Arandr'},
    {'wmclass': 'feh'},
    {'wmclass': 'nitrogen'},
    {'wmclass': 'Galculator'},
    {'wmclass': 'arcolinux-logout'},
    {'wmclass': 'xfce4-terminal'},
    {'wname': 'branchdialog'},
    {'wname': 'Open File'},
    {'wname': 'pinentry'},
    {'wmclass': 'ssh-askpass'},
    {'wmclass': 'surf'},
    {'wmclass': 'htop'},
    {'wmclass': 'ytop'},
    {'wmclass': 'Xfce4-taskmanager'},
    {'wmclass': 'SimpleScreenRecorder'},
    {'wmclass': 'Pavucontrol'},
    {'wmclass': 'Pulseaudio-equalizer-gtk'},
    {'wmclass': 'alsamixer'},
    {'wmclass': 'Variety'},
    {'wmclass': 'Blueberry.py'},
    {'wmclass': 'DevStyle'},
    {'wmclass': 'Eclipse'},
    {'wmclass': 'vis'},

],  fullscreen_border_width=0, border_width=3, border_focus='#b48ead')
auto_fullscreen = True

focus_on_window_activation = "focus"  # or smart

wmname = "LG3D"
