local momentumSettings = require("__sir-rolins-momentum-modules__/lib/settings")

local settingsPackage = {
    {
        type = "double-setting",
        name = "sr-mom-catalytic-reduction",
        setting_type = "startup",
        order = "a",
        default_value = 0.5,
        minimum_value = 0.0,
        maximum_value = 1.0,
    },
}

-- Shared by every catalytic module, added on top of the base module each one is made from.
momentumSettings.addRecipeSettings(settingsPackage, "catalytic", "Catalytic mod", {
    items = {
        { item = "electronic-circuit", amount = 5 },
    },
})

data:extend(settingsPackage)
