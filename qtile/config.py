#   ___ _____ ___ _     _____    ____             __ _       
#  / _ \_   _|_ _| |   | ____|  / ___|___  _ __  / _(_) __ _ 
# | | | || |  | || |   |  _|   | |   / _ \| '_ \| |_| |/ _` |
# | |_| || |  | || |___| |___  | |__| (_) | | | |  _| | (_| |
#  \__\_\|_| |___|_____|_____|  \____\___/|_| |_|_| |_|\__, |
#                                                      |___/ 

import os
import subprocess
from typing import List
from libqtile import hook
from libqtile import bar, layout, qtile, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile.dgroups import simple_key_binder
from qtile_extras import widget
from qtile_extras.widget.decorations import PowerLineDecoration

######################################
#         General Variables          #
######################################

#wm_bar = "qtile"
wn_bar = "polybar"
polybar_size = 45

mod = "mod4" # SUPER KEY
terminal = guess_terminal()

default_font = "Hack Nerd Font"
red_device = "wlan0"

bar_size = 24
font_size = 18
icon_size = 24

color_txt = "#ffffff"
color_bg = "#000000"
color_active = "#00fff7"
color_inactive = "#595959"
color_selected = "#f1ff52"
color_urgent = "#ff2929"
color_g1 = "#8a8a8a"
color_g2 = "#696969"
color_g3 = "#454545"
color_g4 = "#242424"

######################################
#            Keybindings             #
######################################

keys = [

	# Focus
	Key([mod], "h", lazy.layout.left(), desc = "Move focus to left"),
	Key([mod], "l", lazy.layout.right(), desc = "Move focus to right"),
	Key([mod], "j", lazy.layout.down(), desc = "Move focus down"),
	Key([mod], "k", lazy.layout.up(), desc = "Move focus up"),
	Key([mod], "space", lazy.layout.next(), desc = "Move window focus to other window"),

	# Move
	Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc = "Move window to the left"),
	Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc = "Move window to the right"),
	Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc = "Move window down"),
	Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc = "Move window up"),

	# Size
	Key([mod, "control"], "h", lazy.layout.grow_left(), desc = "Grow window to the left"),
	Key([mod, "control"], "l", lazy.layout.grow_right(), desc = "Grow window to the right"),
	Key([mod, "control"], "j", lazy.layout.grow_down(), desc = "Grow window down"),
	Key([mod, "control"], "k", lazy.layout.grow_up(), desc = "Grow window up"),
	Key([mod], "n", lazy.layout.normalize(), desc = "Reset all window sizes"),

	# System
	Key([mod], "Tab", lazy.next_layout(), desc = "Toggle between layouts"),
	Key([mod], "q", lazy.window.kill(), desc = "Kill focused window"),
	Key([mod, "control"], "r", lazy.reload_config(), desc = "Reload the config"),
	Key([mod, "control"], "q", lazy.shutdown(), desc = "Shutdown Qtile"),
    
	# Apps
	Key([mod], "Return", lazy.spawn("kitty"), desc = "Launch Kitty"),
	Key([mod, "shift"], "Return", lazy.spawn(terminal), desc = "Launch Alacritty"),
	Key([mod, "control"], "Return", lazy.spawn("zsh /home/brian/.config/rofi/launchers/type-2/launcher.sh"), desc = "Launch Rofi"),
    Key([mod], "n", lazy.spawn("nemo"), desc = "Launch Nemo"),
	Key([mod], "f", lazy.spawn("firefox"), desc = "Launch Firefox"),
	Key([mod], "g", lazy.spawn("google-chrome-stable"), desc = "Launch Google Chrome"),

	# Screenshot
	Key([mod, "control"], "s", lazy.spawn("scrot"), desc = "Screenshot"),
	Key([mod, "shift"], "s", lazy.spawn("scrot -s"), desc = "Section Screenshot"),

	# Multimedia and Brightness Keys
	Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%"), desc = "Volume Up"),
	Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%"), desc = "Volume Down"),
	Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle"), desc = "Volume Mute"),
    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause"), desc = "Play/Pause player"),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next"), desc = "Skip to Next"),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous"), desc = "Skip to Previous"),
	Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%"), desc = "Brightness Up"),
	Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-"), desc = "Brightness Down"),
]

######################################
#               Groups               #
######################################

groups = [Group(i) for i in [" "," ","󰘦 ", "󰖟 ","󱍢 "," "]]

######################################
#         Setup Layout Theme         #
######################################

layout_theme = {
	"border_width": 1,
	"margin": 5,
	"border_focus": color_active,
	"border_normal": color_bg,
	"border_on_single": True
}

######################################
#              Layouts               #
######################################

layouts = [
	layout.Columns(**layout_theme),
	# layout.MonadTall(**layout_theme),
	# layout.Tile(**layout_theme),
	# layout.Floating(**layout_theme),
	layout.Max(**layout_theme),
]

######################################
#       Setup Widget Defaults        #
######################################

widget_defaults = dict(
	font = default_font,
	fontsize = font_size,
	padding = 1,
)
extension_defaults = widget_defaults.copy()

######################################
#            Decorations             #
######################################

decorator = {
	"decorations": [
		PowerLineDecoration(
			path = "arrow_right",
			size = 10
		)
	],
}

######################################
#              Widgets               #
######################################

widget_list = [
	widget.GroupBox(
		active = color_active,
		inactive = color_inactive,
		this_current_screen_border = color_selected,
		fontsize = icon_size,
		highlight_method = "text",
		urgent_alert_method = "text",
		urgent_border = color_urgent
	),
	widget.Prompt(),
	widget.WindowName(max_chars = 30, background = color_bg, foreground = color_txt, **decorator),
	widget.CheckUpdates(no_update_string = "  0", display_format = "  {updates}", update_interval = 3600, distro = "Arch", background = color_g1, foreground = color_txt),
    widget.Net(format = " 龍 {down:.0f}{down_suffix} ", interface = red_device, use_bits = True, background = color_g1, foreground = color_txt, **decorator),
	widget.CPU(format = "  {load_percent}%", background = color_g2, foreground = color_txt),
	widget.Memory(format = " {MemUsed: .0f}{mm} ", background = color_g2, foreground = color_txt, **decorator),
	widget.Clock(format = " 󰃭 %a %d  %I:%M ", background = color_g3, foreground = color_txt, **decorator),
	widget.Sep(linewidth = 0, padding = 6, background = color_g4),
	widget.Systray(icon_size = icon_size, background = color_g4, foreground = color_txt),
	widget.Sep(linewidth = 0, padding = 6, background = color_g4),
	widget.CurrentLayoutIcon(background = color_g4, foreground = color_txt, scale = 0.7),
	widget.QuickExit(default_text = " ⏻ ", countdown_format = "  ", background = color_g4, foreground = color_txt),
]

######################################
#              Screens               #
######################################

if (wn_bar == "polybar"):
    screens = [Screen(top = bar.Gap(polybar_size))]
else:
    screens = [
        Screen(
            top = bar.Bar(
                widget_list,
                bar_size,
                background = color_bg,
                opacity = 0.8,
                margin = [0, 0, 0, 0], #[N E S W]
            ),
        ),
    ]

######################################
#       Drag floating layouts        #
######################################

mouse = [
	Drag([mod], "Button1", lazy.window.set_position_floating(), start = lazy.window.get_position()),
	Drag([mod], "Button3", lazy.window.set_size_floating(), start = lazy.window.get_size()),
	Click([mod], "Button2", lazy.window.bring_to_front()),
]

######################################
#      Define floating layouts       #
######################################

floating_layout = layout.Floating(
	float_rules = [
		# Run the utility of `xprop` to see the wm class and name of an X client.
		*layout.Floating.default_float_rules,
		Match(wm_class = "confirmreset"), # gitk
		Match(wm_class = "makebranch"), # gitk
		Match(wm_class = "maketag"), # gitk
		Match(wm_class = "ssh-askpass"), # ssh-askpass
		Match(title = "branchdialog"), # gitk
		Match(title = "pinentry"), # GPG key password entry
	]
)

######################################
#           General Setup            #
######################################

dgroups_key_binder = simple_key_binder(mod)
dgroups_app_rules = [] # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True

######################################
#        Windows Manager Name        #
######################################

wmname = "QTILE"

######################################
#               Hooks                #
######################################

@hook.subscribe.startup_once
def autostart():
	script = os.path.expanduser("~/.config/qtile/autostart.sh")
	subprocess.run([script])
