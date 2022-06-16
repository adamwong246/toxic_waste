local sludge = {
  type = "fluid",
  name = "sludge",
  localised_name = "sludge",
  icon = "__base__/graphics/icons/fluid/water.png",
  icon_size = 64,
  flags = {},
  subgroup = "other",
  -- order = "e-sludge",
  stack_size = 1,
  tint = {1, 0, 1, 0.9},
  base_color = {1, 0, 1, 0.9},
  flow_color = {1, 0, 1, 0.9},
  default_temperature = 25,
  max_temperature = 100,
}

-- local sludgeRecipe =
-- {
--   type = "recipe",
--   name = "sludge",
--   localised_name = "sludge",
--   enabled = false,
--   ingredients =
--   {
--       {"sludge", 2}
--   },
--   energy_required = 1,
--   result = "sludge"
-- }

-- local sludgeOnGround = {
--   type = "item-entity",
--   name = "sludge-on-ground",
--   localised_name = "sludge",
--   icon = "__base__/graphics/icons/wall-remnants.png",
--   icon_size = 64,
--   flags = {"placeable-off-grid", "not-on-map"},
--   collision_box = {{ - 0.14, - 0.14}, {0.14, 0.14}},
--   selection_box = {{ - 0.17, - 0.17}, {0.17, 0.17}},
--   minable = {mining_time = 0.025}
-- }

data:extend{
  -- sludgeRecipe,
  sludge,
}
