local wezterm = require("wezterm")

local config = {}

---initialize config
---@return config
function config:init()
    local o = {}
    self = setmetatable(o, { __index = config })
    self.options = {}
    return o
end

---append to 'config.options'
---@param new_options table new options to append
---@return config
function config:append(new_options)
    for k, v in pairs(new_options) do
        if self.options[k] ~= nil then
            wezterm.log_warn(
                'Duplicate config option detected: ',
                { old = self.options[k], new = new_options[k] }
            )
            goto continue
        end
        self.options[k] = v
        ::continue::
    end
    return self
end

return config
