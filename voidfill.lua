-- local voidMask = {"ground-tile","colliding-with-tiles-only"}
-- local voidtint = {0,0,0, 1}

-- local voidfillItem = table.deepcopy(data.raw["item"]["out-of-map"])

-- -- local voidfillItem = {
-- --     type = "item",
-- --     name = "voidfill",
-- --     icons = {{
-- --         icon = "__base__/graphics/icons/landfill.png",
-- --         tint = voidtint
-- --     }},
-- --     icon_size = 64,
-- --     icon_mipmaps = 4,
-- --     subgroup = "terrain",
-- --     order = "c[landfill]-a[dirt]",
-- --     stack_size = 100,
-- --     place_as_tile = {
-- --         result = "voidfill",
-- --         condition_size = 1,
-- --         condition = voidMask
-- --     }
-- -- }

-- local voidfillRecipe = {
--     type = "recipe",
--     name = "voidfill",
--     energy_required = 0.5,
--     enabled = true,
--     category = "crafting",
--     ingredients = {{"scrap", 1}},
--     result = "voidfill",
--     result_count = 1
-- }


-- local voidfillTile = table.deepcopy(data.raw["tile"]["out-of-map"])
-- voidfillTile.name = "voidfill"
-- voidfillTile.tint = voidtint
-- voidfillTile.pollution_absorption_per_second = 0
-- voidfillTile.collision_mask = voidMask
-- voidfillTile.destructible = false;
-- -- voidfillTile.walking_speed_modifier = 0.01;
-- -- voidfillTile.trigger_effect = { type = 'damage', damage = {amount = 1, type = 'impact'}, vaporize = true}

-- data:extend{voidfillItem, voidfillRecipe, voidfillTile}