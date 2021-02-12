--data.lua

for ndx, recipe in pairs(data.raw.recipe) do
    log(ndx)

    if (
      (recipe.hidden ~= true) and (recipe.category ~= "oil-processing" and recipe.category ~= "chemistry" and recipe.category ~= "centrifuging")
    ) then
        if(recipe.result) then
            data.raw.recipe[recipe.name].result = nil;
            data.raw.recipe[recipe.name].results = {
                {amount = 1,
                    name = recipe.name,
                type = "item"},
                {amount = 1,
                    name = "scrap",
                type = "item"},
            };
            else if (recipe.results) then
              log("mark2")
                table.insert(data.raw.recipe[recipe.name].results, {amount = 1,
                    name = "scrap",
                type = "item"});
            end
        end

        recipe.main_product = recipe.name
    end

    data:extend({recipe})

end


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
    place_result = "scrap-on-ground"
}

local scrapRecipe =
{
    type = "recipe",
    name = "scrap",
    localised_name = "scrap",
    --category = "transport",
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
    -- flags = {},
    flags = {"placeable-off-grid", "not-on-map"},
    collision_box = {{ - 0.14, - 0.14}, {0.14, 0.14}},
    selection_box = {{ - 0.17, - 0.17}, {0.17, 0.17}},
    minable = {mining_time = 0.025}
}

data:extend{
    scrapRecipe, scrap, scrapOnGround,
}
