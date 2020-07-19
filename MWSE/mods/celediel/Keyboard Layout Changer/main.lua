local common = require("celediel.Keyboard Layout Changer.common")
local config = require("celediel.Keyboard Layout Changer.config").getConfig()

local function onInitialized()
    if common.changedLayout(config.keyboardLayout) then
        common.log("Changed layout to " .. config.keyboardLayout)
    end
end

event.register("initialized", onInitialized)

event.register("modConfigReady", function()
    mwse.mcm.register(require("celediel.Keyboard Layout Changer.mcm"))
end)
