--data.lua

local shared = require 'sequestor/data'

local autoScienceRecipe = table.deepcopy(data.raw["recipe"]["automation-science-pack"])

autoScienceRecipe.results = {
  {
    amount = 1,
    name = "automation-science-pack",
    type = "item"
  },
  {
    amount = 1,
    name = "scrap",
    type = "item",
    durability = 10
  },
}

autoScienceRecipe.main_product = "automation-science-pack"
autoScienceRecipe.icon = "__base__/graphics/icons/automation-science-pack.png"
autoScienceRecipe.icon_mipmaps = 4
autoScienceRecipe.icon_size = 64

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
  collision_box = {{-0.14, -0.14}, {0.14, 0.14}},
  selection_box = {{-0.17, -0.17}, {0.17, 0.17}},
  minable = {mining_time = 0.025}
}

local scrapCompactorRecipe =
{
  type = "recipe",
  name = "scrap-compactor",
  localised_name = "scrap compactor",
  --category = "transport",
  enabled = true,
  ingredients =
  {
  },
  energy_required = 1,
  result = "scrap-compactor"
}

local scrapCompactorItem =   {
    localised_name = "scrap compactor",

    type = "item",
    name = "scrap-compactor",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "scrap-compactor",
    stack_size = 1
  }


local scrapCompactorEntity =   {
    localised_name = "scrap compactor",
    fixed_recipe = "scrap",

    type = "assembling-machine",
    name = "scrap-compactor",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "assembling-machine-1"},
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    resistances =
    {
      -- {
      --   type = "fire",
      --   percent = 70
      -- }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- damaged_trigger_effect = hit_effects.entity(),
    -- fast_replaceable_group = "assembling-machine",
    -- next_upgrade = "assembling-machine-2",
    -- alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "75kW",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        }
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }

data:extend{
  scrapCompactorItem, scrapCompactorEntity, scrapCompactorRecipe,
  scrapRecipe, scrap, scrapOnGround,
  autoScienceRecipe
}

log("LOADED")
