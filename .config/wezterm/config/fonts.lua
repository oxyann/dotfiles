local wezterm = require("wezterm")
local platform = require("utils.platform")

local font = "JetBrainsMonoNL Nerd Font"
local font_size = 16

return {
    font = wezterm.font(font),
    font_size = font_size,
}
