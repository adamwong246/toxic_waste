for ndx, recipe in pairs(data.raw.recipe) do
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
                table.insert(data.raw.recipe[recipe.name].results, {amount = 1,
                    name = "scrap",
                type = "item"});
            end
        end

        recipe.main_product = recipe.name
    end

    data:extend({recipe})

end
