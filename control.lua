script.on_event(defines.events.on_player_built_tile, function(event)
  log(serpent.block(event));
end)

-- function died(event)
--   log('died');
--   log(serpent.block(event.entity.get_inventory(defines.inventory.chest).get_contents()));
-- end

-- function dropped(event)
--   log('droped');
--   log(event.entity.prototype.name);
--   log(event.entity.prototype.type);
-- end

-- script.on_event(defines.events.on_entity_died, died)
-- script.on_event(defines.events.on_player_dropped_item, dropped)


-- script.on_event(defines.events.on_built_entity, function(event)
--   if event.created_entity.name == "garbagefill" then
--       event.created_entity.destructible = false
--   end

--   if event.created_entity.name == "sacrificefill" then
--       event.created_entity.destructible = false
--   end
-- end)

-- script.on_event(defines.events.on_robot_built_entity, function(event)
--   if event.created_entity.name == "garbagefill" then
--       event.created_entity.destructible = false
--   end

--   if event.created_entity.name == "sacrificefill" then
--       event.created_entity.destructible = false
--   end
-- end)

-- script.on_event(defines.events.script_raised_revive, function(event)
-- local entity = event.entity or event.created_entity
--   if event.created_entity.name == "garbagefill" then
--       event.created_entity.destructible = false
--   end

--   if event.created_entity.name == "sacrificefill" then
--       event.created_entity.destructible = false
--   end
-- end)

-- script.on_event(defines.events.script_raised_built, function(event)
--   local entity = event.entity or event.created_entity
--   if event.created_entity.name == "garbagefill" then
--       event.created_entity.destructible = false
--   end

--   if event.created_entity.name == "sacrificefill" then
--       event.created_entity.destructible = false
--   end
-- end)