local keys = require("celediel.Keyboard Layout Changer.keys")

local supportedLayouts = ""
for name, _ in pairs(keys) do supportedLayouts = supportedLayouts .. name .. " " end

local this = {}

this.modName = "Keyboard Layout Changer"
this.author = "Celediel"
this.version = "1.0.0"
this.configString = string.gsub(this.modName, "%s+", "")
this.modInfo = "Allows use of non-qwerty keyboard layouts.\n\nCurrently supported:\n" .. supportedLayouts

function this.log(str) mwse.log("[%s] %s", this.modName, str) end

function this.changedLayout(layout)
    local changed = false

    if keys[layout] and (#keys[layout].lowercase == 256 and #keys[layout].uppercase == 256) then
        -- Thanks NullCascade
        mwse.memory.writeBytes({address = 0x775148, bytes = keys[layout].lowercase})
        mwse.memory.writeBytes({address = 0x775248, bytes = keys[layout].uppercase})
        changed = true
    end

    return changed
end

return this
