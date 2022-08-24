local redTint = {0.9, 0.25, 0.5, 0.8}

local wasteCategory = table.deepcopy(data.raw["recipe-category"]["smelting"])
wasteCategory.name = "waste";
wasteCategory.localised_name = "waste";

local voidingMachineItem = table.deepcopy(data.raw["item"]["stone-furnace"])
voidingMachineItem.energy_source = {
    type = "void"
};
voidingMachineItem.name = "Voiding Machine";
voidingMachineItem.localised_name = "Voiding Machine";
voidingMachineItem.place_result = "Voiding Machine";
voidingMachineItem.icons = {{
    icon = "__base__/graphics/icons/stone-furnace.png",
    tint = redTint
}}

local voidingMachine = table.deepcopy(data.raw["furnace"]["stone-furnace"])
voidingMachine.energy_source = {
    type = "void"
};
voidingMachine.name = "Voiding Machine";
voidingMachine.localised_name = "Voiding Machine";
voidingMachine.crafting_categories = {"waste"}
voidingMachine.icon = {};
voidingMachine.icons = {{
    icon = "__base__/graphics/icons/stone-furnace.png",
    tint = redTint
}}
voidingMachine.minable = {
    mining_time = 0.2,
    result = "Voiding Machine"
}
voidingMachine.dying_trigger_effect = {{
    type = "set-tile",
    tile_name = "sacrificefill",
    radius = 5,
    apply_projection = true,
    tile_collision_mask = {"water-tile"}
}, {
    type = "create-fire",
    entity_name = "fire-flame",
    show_in_tooltip = true,
    initial_ground_flame_count = 20
}}

voidingMachine.damaged_trigger_effect = {{
    type = "create-fire",
    entity_name = "fire-flame",
    show_in_tooltip = true,
    initial_ground_flame_count = 1
}}

local voidingMachineRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
voidingMachineRecipe.name = "Voiding Machine"
voidingMachineRecipe.localised_name = "Voiding Machine"
voidingMachine.icon = {};
voidingMachineRecipe.icons = {{
    icon = "__base__/graphics/icons/stone-furnace.png",
    tint = redTint
}}
voidingMachineRecipe.icon_size = 64
voidingMachineRecipe.icon_mipmaps = 4
voidingMachineRecipe.main_product = ""
voidingMachineRecipe.subgroup = "other"
-- voidingMachineRecipe.result = "Voiding Machine"
voidingMachineRecipe.results = {{
    type = "item",
    name = "Voiding Machine",
    amount = 1
}}

local voidingRecipe = {
    type = "recipe",
    name = "scrap-void",
    category = "waste",
    energy_required = 1,
    ingredients = {{"scrap", 1}},
    results = {},
    icon = "__base__/graphics/icons/wall-remnants.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-material",
    hidden = true

}

-- voidingMachineRecipe.name = "Voiding Machine"
-- voidingMachineRecipe.localised_name = "Voiding Machine"
-- voidingMachineRecipe.icon = "__base__/graphics/icons/stone-furnace.png"
-- voidingMachineRecipe.icon_size = 64
-- voidingMachineRecipe.icon_mipmaps = 4
-- voidingMachineRecipe.result = "Voiding Machine"
-- voidingMachineRecipe.main_product = ""
-- voidingMachineRecipe.subgroup = "other"
-- voidingMachineRecipe.result = "Voiding Machine"
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

data:extend{wasteCategory, voidingMachine, voidingMachineRecipe, voidingMachineItem, voidingRecipe};
