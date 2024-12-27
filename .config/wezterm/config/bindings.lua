local wezterm = require("wezterm")
local platform = require("utils.platform")()
local act = wezterm.action

local mod = {}

local keys = {
    -- misc/useful
    { key = "F1", mods = "NONE", action = "ActivateCopyMode" },
    { key = "F2", mods = "NONE", action = act.ActivateCommandPalette },
    { key = "F3", mods = "NONE", action = act.ShowLauncher },
    { key = "F4", mods = "NONE", action = act.ShowTabNavigator },
    { key = "F11", mods = "NONE", action = act.ToggleFullScreen },
    { key = "F12", mods = "NONE", action = act.ShowDebugOverlay },

    -- copy/paste
    { key = "c", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },
    { key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },

    -- tabs
    -- tabs: spawn+close
    { key = "c", mods = "LEADER", action = act.SpawnTab("DefaultDomain") },
    { key = "&", mods = "LEADER|SHIFT", action = act.CloseCurrentTab({ confirm = true }) },

    --tabs: navigation
    { key = "[", mods = "LEADER", action = act.ActivateTabRelative(-1) },
    { key = "]", mods = "LEADER", action = act.ActivateTabRelative(1) },
    { key = "1", mods = "LEADER", action = act.ActivateTab(0) },
    { key = "2", mods = "LEADER", action = act.ActivateTab(1) },
    { key = "3", mods = "LEADER", action = act.ActivateTab(2) },
    { key = "4", mods = "LEADER", action = act.ActivateTab(3) },
    { key = "5", mods = "LEADER", action = act.ActivateTab(4) },
    { key = "6", mods = "LEADER", action = act.ActivateTab(5) },
    { key = "7", mods = "LEADER", action = act.ActivateTab(6) },
    { key = "8", mods = "LEADER", action = act.ActivateTab(7) },
    { key = "9", mods = "LEADER", action = act.ActivateTab(8) },

    -- window --
    -- spawn window
    { key = "n", mods = "LEADER", action = act.SpawnWindow },

    -- panes --
    -- panes: split panes
    { key = '%', mods = "LEADER|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
    { key = '"', mods = "LEADER|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
    { key = 'x', mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },

    -- panes: zoom+close pane
    -- panes: navigation
    -- panes: resize

    -- fonts --
    -- fonts: resize

    -- key-tables --
    -- resize fonts
    -- resize panes
    -- rename tab bar
}

local key_tables = {
    resize_font = {
        { key = "k", action = act.IncreaseFontSize },
        { key = "j", action = act.DecreaseFontSize },
        { key = "r", action = act.ResetFontSize },
        { key = "Escape", action = "PopKeyTable" },
        { key = "q", action = "PopKeyTable" },
    },
    resize_pane = {
        { key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
        { key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
        { key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
        { key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
        { key = "Escape", action = "PopKeyTable" },
        { key = "q", action = "PopKeyTable" },
    },
}

local mouse_tables = {}

return {
    disable_default_key_bindings = true,
    disable_default_mouse_bindings = true,
    leader = { key = "Space", mods = "CTRL" },
    keys = keys,
    key_tables = key_tables,
    mouse_bindings = mouse_bindings,
}
