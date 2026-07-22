------------------
---- MONITORS ----
------------------

hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "0x0",
    scale = "1",
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "0x-1080",
    scale = "2",
})

---------------------
---- MY PROGRAMS ----
---------------------

local terminal = "foot"
local fileManager = "nautilus --new-window"
local menu = "rofi -show-icons -show drun"
local browser = "firefox"
local clipboard = "cliphist list | rofi -dmenu | cliphist decode | wl-copy"
local emojiPicker = "rofi -modi emoji -show emoji"


-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
    hl.exec_cmd("exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")

    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("wl-clip-persist --clipboard regular")

    hl.exec_cmd("rfkill unblock bluetooth")
    hl.exec_cmd("bluetoothctl power off")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,

        border_size = 2,

        col = {
            active_border = "#888888",
            inactive_border = "#333333",
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 0,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = false,
        },

        dim_special = 0.8
    },

    animations = {
        enabled = false,
    },
})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout = "us, ara",
        kb_options = "grp:alts_toggle",

        follow_mouse = 2,

        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + delete", hl.dsp.exec_cmd("hyprlock"), { dont_inhibit = true })

hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal), { dont_inhibit = true })
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd(fileManager), { dont_inhibit = true })
hl.bind(mainMod .. " + slash", hl.dsp.exec_cmd(browser), { dont_inhibit = true })
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(menu), { dont_inhibit = true })
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(clipboard), { dont_inhibit = true })
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(emojiPicker), { dont_inhibit = true })

hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("playerctl play-pause"), { dont_inhibit = true })

hl.bind(mainMod .. " + backspace", hl.dsp.window.close(), { dont_inhibit = true })
hl.bind(mainMod .. " + backslash", hl.dsp.window.float({ action = "toggle" }), { dont_inhibit = true })
hl.bind(mainMod .. " + I", hl.dsp.window.pseudo(), { dont_inhibit = true })
hl.bind(mainMod .. " + U", hl.dsp.layout("togglesplit"), { dont_inhibit = true })
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(), { dont_inhibit = true })
hl.bind(mainMod .. " + P", hl.dsp.window.pin(), { dont_inhibit = true })

hl.bind("print", hl.dsp.exec_cmd("screenshot screen"), { dont_inhibit = true })
hl.bind(mainMod .. " + s", hl.dsp.exec_cmd("screenshot region"), { dont_inhibit = true })

hl.bind(mainMod .. " + semicolon", hl.dsp.window.resize({ x = "-40", y = "0", relative = true }),
    { dont_inhibit = true, repeating = true })
hl.bind(mainMod .. " + SHIFT + semicolon", hl.dsp.window.resize({ x = "0", y = "40", relative = true }),
    { dont_inhibit = true, repeating = true })
hl.bind(mainMod .. " + apostrophe", hl.dsp.window.resize({ x = "40", y = "0", relative = true }),
    { dont_inhibit = true, repeating = true })
hl.bind(mainMod .. " + SHIFT + apostrophe", hl.dsp.window.resize({ x = "0", y = "-40", relative = true }),
    { dont_inhibit = true, repeating = true })

hl.bind(mainMod .. " + bracketleft", hl.dsp.window.swap({ direction = "left" }), { dont_inhibit = true })
hl.bind(mainMod .. " + SHIFT + bracketleft", hl.dsp.window.swap({ direction = "down" }), { dont_inhibit = true })
hl.bind(mainMod .. " + bracketright", hl.dsp.window.swap({ direction = "right" }), { dont_inhibit = true })
hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.window.swap({ direction = "up" }), { dont_inhibit = true })

hl.bind(mainMod .. " + tab", hl.dsp.window.cycle_next(), { dont_inhibit = true })

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }), { dont_inhibit = true })
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }), { dont_inhibit = true })
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }), { dont_inhibit = true })
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }), { dont_inhibit = true })

for i = 1, 5 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i}), { dont_inhibit = true })
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }), { dont_inhibit = true })
end

hl.bind(mainMod .. " + 0", hl.dsp.workspace.toggle_special("magic"), { dont_inhibit = true })
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "special:magic" }), { dont_inhibit = true })

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { dont_inhibit = true })
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { dont_inhibit = true })

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { dont_inhibit = true, mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { dont_inhibit = true, mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { dont_inhibit = true, locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { dont_inhibit = true, locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { dont_inhibit = true, locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { dont_inhibit = true, locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { dont_inhibit = true, locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { dont_inhibit = true, locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { dont_inhibit = true, locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { dont_inhibit = true, locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { dont_inhibit = true, locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { dont_inhibit = true, locked = true })

hl.bind(mainMod .. " + f1", hl.dsp.submap("Control"), { dont_inhibit = true })
hl.define_submap("Control", function()
    hl.bind("d", hl.dsp.dpms({ action = "toggle", monitor = "current" }), { dont_inhibit = true })

    hl.bind("h", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"),
        { dont_inhibit = true, locked = true, repeating = true })
    hl.bind("SHIFT+ h", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%-"),
        { dont_inhibit = true, locked = true, repeating = true })

    hl.bind("j", hl.dsp.exec_cmd("brightnessctl s 5%-"),
        { dont_inhibit = true, locked = true, repeating = true })
    hl.bind("SHIFT + j", hl.dsp.exec_cmd("brightnessctl s 1%-"),
        { dont_inhibit = true, locked = true, repeating = true })

    hl.bind("k", hl.dsp.exec_cmd("brightnessctl s 5%+"),
        { dont_inhibit = true, locked = true, repeating = true})
    hl.bind("SHIFT + k", hl.dsp.exec_cmd("brightnessctl s 1%+"),
        { dont_inhibit = true, locked = true, repeating = true})

    hl.bind("l", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
        { dont_inhibit = true, locked = true, repeating = true})
    hl.bind("SHIFT+ l", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%+"),
        { dont_inhibit = true, locked = true, repeating = true})

    hl.bind("escape", hl.dsp.submap("reset"), { dont_inhibit = true })
end)

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.workspace_rule({ workspace = "1", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1" })

hl.workspace_rule({ workspace = "special:magic", gaps_in = 20, gaps_out = 40  })

local pin_clients = {
    "Picture-in-Picture",
    "Picture in picture",
}

for index, value in ipairs(pin_clients) do
    hl.window_rule({ match = { title = value }, float = true })
    hl.window_rule({ match = { title = value }, pin = true })
end

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})
