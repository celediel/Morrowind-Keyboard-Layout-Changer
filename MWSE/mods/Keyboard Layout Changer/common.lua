local keys = require("Keyboard Layout Changer.keys")
local supportedLayouts = ""
for name, _ in pairs(keys) do
    supportedLayouts = supportedLayouts .. name .. " "
end

local this = {}

this.modName = "Keyboard Layout Changer"
this.author = "Celediel"
this.version = "1.0.0"
this.configString = string.gsub(this.modName, "%s+", "")
this.modInfo = "Allows use of non-qwerty keyboard layouts.\n\nCurrently supported:\n" .. supportedLayouts

function this.log(str) mwse.log("[%s] %s", this.modName, str) end

function this.changeLayout(keys)
    -- Thanks NullCascade
    mwse.memory.writeBytes({address = 0x775148, bytes = keys.lowercase})
    mwse.memory.writeBytes({address = 0x775248, bytes = keys.uppercase})
end

return this