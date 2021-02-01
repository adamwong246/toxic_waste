--control.lua

require 'sequestor/control'

-- script.on_event(defines.events.on_built_entity,
--   function(event)
--     local player = game.get_player(event.player_index) -- get the player that moved
--     -- if they're wearing our armor
--     if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("fire-armor") >= 1 then
--        -- create the fire where they're standing
--        -- player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"}
--        log("You moved while wearing the fire armor")
--     end
--
--     if player.character and player.get_inventory(defines.inventory.item_main).get_item_count("foot-generator") >= 1 then
--        -- create the fire where they're standing
--        -- player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"}
--        log("You moved while wearing the foot-generator")
--     end
--   end
-- )
