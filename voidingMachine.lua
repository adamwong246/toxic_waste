local redTint = {0.9, 0.25, 0.5, 0.8}

local wasteCategory = table.deepcopy(data.raw["recipe-category"]["smelting"])
wasteCategory.name = "waste";
wasteCategory.localised_name = "waste";

local voidingMachine = table.deepcopy(data.raw["furnace"]["stone-furnace"])
voidingMachine.energy_source = {
    type = "void"
};
voidingMachine.name = "Voiding Machine";
voidingMachine.localised_name = "Voiding Machine";

-- voidingMachine.icons= {
--   {
--     icon=voidingMachine.icon,
--     tint=redTint
--   },
-- }

voidingMachine.crafting_categories = {"waste"}

local voidingMachineRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
voidingMachineRecipe.name = "Voiding Machine"
voidingMachineRecipe.localised_name = "Voiding Machine"
voidingMachineRecipe.icon = "__base__/graphics/icons/fluid/basic-oil-processing.png"
voidingMachineRecipe.icon_size = 64
voidingMachineRecipe.icon_mipmaps = 4
voidingMachineRecipe.result = "Voiding Machine"
voidingMachineRecipe.main_product = ""
voidingMachineRecipe.subgroup = "other"

-- voidingMachineRecipe.icon= {
--   {
--     icon=voidingMachineRecipe.icon,
--     tint={r=1,g=0,b=0,a=0.3}
--   },
-- }

  -- {
  --   type="item",
  --   name="Voiding Machine",
  --   amount = 1
  -- }
-- };



data:extend{
  wasteCategory, 
  voidingMachine, 
  voidingMachineRecipe
};
