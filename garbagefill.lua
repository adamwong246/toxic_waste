-- I'm not sure what this ought to be
local collisionMask = {
-- -- "ground-tile",
-- "water-tile",
-- "resource-layer",
-- "doodad-layer",
-- "floor-layer",
-- "item-layer",
-- "object-layer",
-- "colliding-with-tiles-only"
}

local tint = {0.85, 0.25, 0.25, 1}

local garbagefillItem =   {
    type = "item",
    name = "garbagefill",
    icons = {{
      icon = "__base__/graphics/icons/landfill.png",
      tint = tint
    }},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 100,
    place_as_tile =
    {
      result = "garbagefill",
      condition_size = 1,
      condition = collisionMask
    }
  }

local garbagefillRecipe = {
    type = "recipe",
    name = "garbagefill",
    energy_required = 0.5,
    enabled = true,
    category = "crafting",
    ingredients =
    {
      {"scrap", 100}
    },
    result= "garbagefill",
    result_count = 1
}

local garbagefillTile = table.deepcopy(data.raw["tile"]["landfill"])

garbagefillTile.name = "garbagefill"
garbagefillTile.tint = tint
-- garbagefillTile.effect_color= {0.85, 0.25, 0.25, 1}
garbagefillTile.pollution_absorption_per_second = -0.001
garbagefillTile.collision_mask = collisionMask
-- garbagefillTile.layer_group = "ground"
-- garbagefillTile.minable = {mining_time = 0.1, result = "garbagefill"}
-- garbagefillTile.layer = 57

data:extend{
    garbagefillItem, garbagefillRecipe, garbagefillTile
}
