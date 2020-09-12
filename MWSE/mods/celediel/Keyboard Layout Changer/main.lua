local common = require("celediel.Keyboard Layout Changer.common")
local config = require("celediel.Keyboard Layout Changer.config").getConfig()

local function onInitialized()
    local message = ""

    if common.changedLayout(config.keyboardLayout) then
        message = "Changed layout to " .. config.keyboardLayout
    else
        message = "Bad keys.lua file, please re-install."
        tes3.messageBox(string.format("(%s) %s", common.modName, message))
    end

    common.log(message)
end

event.register("initialized", onInitialized)

event.register("modConfigReady", function()
    mwse.mcm.register(require("celediel.Keyboard Layout Changer.mcm"))
end)
