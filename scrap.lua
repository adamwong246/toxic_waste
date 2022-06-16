local scrap = {
    type = "item",
    name = "scrap",
    localised_name = "scrap",
    icon = "__base__/graphics/icons/wall-remnants.png",
    icon_size = 64,
    flags = {},
    subgroup = "other",
    order = "e-scrap",
    stack_size = 1,
}

local scrapRecipe =
{
    type = "recipe",
    name = "scrap",
    localised_name = "scrap",
    enabled = false,
    ingredients =
    {
        {"scrap", 2}
    },
    energy_required = 1,
    result = "scrap"
}

local scrapOnGround = {
    type = "item-entity",
    name = "scrap-on-ground",
    localised_name = "scrap",
    icon = "__base__/graphics/icons/wall-remnants.png",
    icon_size = 64,
    flags = {"placeable-off-grid", "not-on-map"},
    collision_box = {{ - 0.14, - 0.14}, {0.14, 0.14}},
    selection_box = {{ - 0.17, - 0.17}, {0.17, 0.17}},
    minable = {mining_time = 0.025}
}

data:extend{
    scrapRecipe, scrap, scrapOnGround,
}
