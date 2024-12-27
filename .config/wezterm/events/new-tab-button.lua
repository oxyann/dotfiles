local wezterm = require("wezterm")

local M = {}

M.setup = function()
    wezterm.on("new_tab_button_click", function(window, pane, button, default_action)
        wezterm.log_info("new_tab", window, pane, button, default_action)
        if default_action and button == "Left" then
            window:perform_action(default_action, pane)
        end

        if default_action and button == "Right" then
            window:perform_action(
                wezterm.action.ShowLauncherArgs({
                    title = "󰈲 Select/Search:",
                    flags = "FUZZY|LAUNCH_MENU_TIEMS|DOMAINS",
                }),
                pane
            )
        end
        return false
    end)
end

return M
