from os import environ

from libqtile.config import ScratchPad, DropDown, Key
from libqtile.command import lazy


class Scratchpad(object):

    def init_scratchpad(self):

        # Terminal
        # terminal = environ.get("TERMINAL_SOLO")

        # Configuration
        height = 0.7650
        y_position = 0.1151
        warp_pointer = False
        on_focus_lost_hide = True
        opacity = 1

        sm_height = 0.2650
        sm_width = 0.25
        sm_y_position = 0.3151
        sm_x_position = 0.3351

        # md_height = 0.2650
        md_width = 0.50
        md_y_position = 0.2151
        md_x_position = 0.2351

        return [
            ScratchPad("SPD",
                       dropdowns=[
                           # Drop down terminal with tmux session
                           DropDown("term", "st -e tmux new-session -A -s 'D Term'",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           # Another terminal exclusively for music player
                           DropDown("vifm", "st -e vifm",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           DropDown("surf", "surf",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           DropDown("calc", "st -e calc -d",
                                    opacity=opacity,
                                    y=sm_y_position,
                                    x=sm_x_position,
                                    height=sm_height,
                                    width=sm_width,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           DropDown("qutebrowser", "qutebrowser",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           DropDown("simplerecorder", "simplescreenrecorder",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),
                           DropDown("qutebrowser", "qutebrowser",
                                    opacity=opacity,
                                    y=y_position,
                                    height=height,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer),

                           DropDown("audio", "st -n audio -e pamix",
                                    opacity=opacity,
                                    x=md_x_position,
                                    y=md_y_position,
                                    width=md_width,
                                    on_focus_lost_hide=on_focus_lost_hide,
                                    warp_pointer=warp_pointer)
                       ]
                       ),
        ]


class DropDown_Keys(object):

    ##### DROPDOWNS KEYBINDINGS #####

    def init_dropdown_keybindings(self):

        # Key alias
        mod = "mod4"
        alt = "mod1"
        altgr = "mod5"

        return [
            Key([mod, "shift"], "t",
                lazy.group["SPD"].dropdown_toggle("term")),
            Key([mod, "shift"], "Return",
                lazy.group["SPD"].dropdown_toggle("vifm")),
            Key([mod, "shift"], "c",
                lazy.group["SPD"].dropdown_toggle("calc")),
            Key([mod, "control"], "w",
                lazy.group["SPD"].dropdown_toggle("surf")),
            Key([mod, "shift"], "w",
                lazy.group["SPD"].dropdown_toggle("qutebrowser")),
            Key([mod, "shift"], "s",
                lazy.group["SPD"].dropdown_toggle("simplerecorder")),
            Key([mod], "p",
                lazy.group["SPD"].dropdown_toggle("audio"))
        ]
