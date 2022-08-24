local CollisionMaskUtil = require("__core__.lualib.collision-mask-util")
local layer1 = CollisionMaskUtil.get_first_unused_layer()
local layer2 = CollisionMaskUtil.get_first_unused_layer()

-- you CAN pave over Garbage
local garbageFillMask = {layer1}

-- you CAN NOT pave over a Sacfice Zone
local sacrificeZoneMask = {layer1,  "water-tile", "floor-layer", "item-layer", "object-layer"}

local redTint = {0.9, 0.25, 0.5, 0.8}
local darkRedTint = {1, 0, 1, 0.9}

local garbagefillItem = {
    type = "item",
    name = "garbagefill",
    icons = {{
        icon = "__base__/graphics/icons/landfill.png",
        tint = redTint
    }},
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 100,
    place_as_tile = {
        result = "garbagefill",
        condition_size = 1,
        condition = garbageFillMask
    }
}

local sacrificefillItem = {
    type = "item",
    name = "sacrificefill",
    icons = {{
        icon = "__base__/graphics/icons/landfill.png",
        tint = darkRedTint
    }},
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 100,
    place_as_tile = {
        result = "sacrificefill",
        condition_size = 1,
        condition = sacrificeZoneMask
    }
}

local garbagefillRecipe = {
    type = "recipe",
    name = "garbagefill",
    energy_required = 0.5,
    enabled = true,
    category = "crafting",
    ingredients = {{"scrap", 100}},
    result = "garbagefill",
    result_count = 1
}

local sacrificefillRecipe = {
    type = "recipe",
    name = "sacrificefill",
    energy_required = 0.5,
    enabled = true,
    category = "crafting",
    ingredients = {{"scrap", 100}},
    result = "sacrificefill",
    result_count = 1
}

local garbagefillTile = table.deepcopy(data.raw["tile"]["landfill"])
garbagefillTile.name = "garbagefill"
garbagefillTile.tint = redTint
garbagefillTile.pollution_absorption_per_second = -0.001
garbagefillTile.collision_mask = garbageFillMask
garbagefillTile.destructible = false;
garbagefillTile.walking_speed_modifier = 0.3;

local sacrificefillTile = table.deepcopy(data.raw["tile"]["landfill"])
sacrificefillTile.name = "sacrificefill"
sacrificefillTile.tint = darkRedTint
sacrificefillTile.pollution_absorption_per_second = -0.001
sacrificefillTile.collision_mask = sacrificeZoneMask
sacrificefillTile.destructible = false;
sacrificefillTile.walking_speed_modifier = 0.3;

data:extend{
    garbagefillItem, garbagefillRecipe, garbagefillTile, 
    sacrificefillItem, sacrificefillRecipe,sacrificefillTile,
}

local landfillTile = table.deepcopy(data.raw["item"]["landfill"])
landfillTile.tint = {0, 0, 1, 0.9}
landfillTile.place_as_tile.condition = { layer1 }


data:extend{
    landfillTile
}
