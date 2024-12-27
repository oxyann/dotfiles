local wezterm = require("wezterm")
local colors = require("colors.custom")

return {
    color_scheme = "Dracula",

    -- window
    window_decorations = "NONE",
    --initial_cols = 1920,
    --initial_rows = 1080,
    wezterm.mux.spawn_window({
        position = {
            x = 1920,
            y = 0,
        },
        size = {
            width = 800,
            height = 600,
        },
    }),
}
