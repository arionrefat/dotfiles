from typing import List  # noqa: F401
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile import hook
import os
import subprocess

mod = "mod4"
terminal = "kitty"

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen"),
    Key([mod], "Escape", lazy.screen.toggle_group(),
        desc="move back and forth between groups"),
    Key([mod], "Tab", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "space", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod, "control"], "space",
        lazy.window.toggle_floating(), desc="Toggle floating"),
    Key([mod, "shift"], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
    ])


@hook.subscribe.client_new
def func(c):
    if c.name == "Discord":
        c.togroup("4")
    elif c.name == "discord":
        c.cmd_static(0)
    elif c.name == "pcmanfm":
        c.togroup("5")
    elif c.name == "Pcmanfm":
        c.cmd_static(0)
    elif c.name == "Brave-browser":
        c.togroup("2")
    elif c.name == "Brave-browser":
        c.cmd_static(0)
    elif c.name == "mpv":
        c.togroup("6")
    elif c.name == "mpv":
        c.cmd_static(0)


layout_theme = {"border_width": 2,
                "margin": 10,
                "border_focus": "#e1acff",
                "border_normal": "#1D2330"
                }

layouts = [
    layout.Columns(**layout_theme),
    layout.Max(**layout_theme),
    layout.Stack(num_stacks=2),
    layout.Bsp(**layout_theme),
    layout.Matrix(**layout_theme),
    layout.MonadTall(**layout_theme),
    layout.MonadWide(**layout_theme),
    layout.RatioTile(**layout_theme),
    layout.Tile(**layout_theme),
    layout.TreeTab(**layout_theme),
    layout.VerticalTile(**layout_theme),
    layout.Zoomy(**layout_theme),
]

widget_defaults = dict(
    font='Iosevka Nerd Font',
    fontsize=14,
    padding=3,
    background='#1A1B26'
)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(),
                widget.Sep(padding=10),
                widget.GroupBox(
                    padding_x=5,
                    borderwidth=0,
                    active='#ffffff',
                    inactive='#ffffff',
                    rounded=True,
                    highlight_method="block",
                    highlight_color='#1A1B26',
                    block_highlight_text_color='#ffffff',
                    this_current_screen_border='#3D59A1',
                    hide_unused=True
                ),
                widget.Prompt(),
                widget.WindowName(max_chars=40, padding=5),
                widget.Moc(),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.TextBox(' '),
                widget.CPU(),
                widget.Sep(),
                widget.TextBox(''),
                widget.ThermalSensor(),
                widget.Sep(),
                widget.Memory(format='{MemUsed: .0f} M'),
                widget.Sep(),
                widget.Battery(format=' {percent:2.0%}', update_interval=10),
                widget.Sep(),
                widget.TextBox('墳'),
                widget.Volume(),
                widget.Sep(),
                widget.Clock(format=' %I:%M %p'),
                widget.Sep(),
                widget.Clock(format=' %Y-%m-%d %a '),
                widget.Spacer(),
                widget.TextBox(' '),
                widget.Notify(default_timeout=10),
                #  widget.Systray(),
            ],
            20,
            # margin = [10,10,0,10],
            opacity=1,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    *layout.Floating.default_float_rules,
    Match(wm_class='Nitrogen'),
    Match(wm_class='Lightdm-settings'),
    Match(wm_class='Lxappearance'),
    Match(wm_class='Pavucontrol'),
    Match(title='alsamixer'),
])

auto_fullscreen = False
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])


wmname = "qtile"
