local momentum = require("__sir-rolins-momentum-modules__/lib/momentum")
require("__sir-rolins-momentum-modules__/lib/module_list")

local reduction = settings.startup["sr-mom-catalytic-reduction"].value
local reductionPercent = tostring(math.floor(reduction * 100 + 0.5))

local package = {}

-- Catalytic modules only make sense for modules with a penalty to reduce.
local function hasMalus(module)
	for key, value in pairs(module.effect or {}) do
		if momentum.isMalus(key, value) then return true end
	end
	return false
end

-- A catalytic module for every module type and tier in the module list, e.g. sr-mom-speed-catalytic-2-0.
-- Tiers without negative effects (e.g. clean modules) are skipped.
for _, module in pairs(getModuleList()) do
	local categoryName = momentum.categoryName(module.name)
	for tier = 1, 3 do
		local base = module["tier" .. tier]
		if base and hasMalus(base) then
			local names = {
				name = tier == 1
					and { "sr-mom-name.catalytic", categoryName }
					or  { "sr-mom-name.catalytic-tier", categoryName, tostring(tier) },
				description = function(i) return { "sr-mom-description.catalytic", categoryName, tostring(tier), reductionPercent, tostring(i) } end,
			}
			local c, l = module.baseColour, module.lightColour
			momentum.SetupCatalyticMod(package, module.name .. "-catalytic", base.category, base, tier,
				momentum.getTintedIcons(tier, c.r, c.g, c.b, l.r, l.g, l.b), nil, reduction,
				{ names = names, recipeSettings = "catalytic" })
		end
	end
end
-- The old catalyst modules (sr-mom-catalyst-*) are renamed to productivity-catalytic in old saves by
-- the core mod's migrations/0.1.4-catalyst-to-productivity-catalytic.json.

data:extend(package)
