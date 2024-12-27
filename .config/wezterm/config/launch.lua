local platform = require("utils.platform")()

local options = {
    default_prog = {},
    launch_menu = {},
}

if platform.is_linux then
    options.default_prog = { "/usr/bin/zsh" }
    options.launch_menu = {
        { label = " Bash", args = { "bash" } },
        { label = " Fish", args = { "fish" } },
        { label = " Nushell", args = { "nu" } },
        { label = " Zsh", args = { "zsh" } },
    }
end

return options
