script.on_event(defines.events.on_player_dropped_item, function(event)
  -- log(serpent.block(event.entity.surface));

  if (event.entity.stack.name == "scrap") then
    event.entity.surface.set_tiles({
      {
        name = "sacrificefill", position = event.entity.position
      }
    })
  end

end)

script.on_event(defines.events.on_entity_died, function(event)

  if ( 
    event.entity.valid and 
    event.entity.get_inventory(defines.inventory.chest) and 
    event.entity.get_inventory(defines.inventory.chest).get_item_count('scrap') > 1) then
    local p = event.entity.position;

    for i = 1,event.entity.get_inventory(defines.inventory.chest).get_item_count('scrap'),1 
    do 

      repeat
        p.x = p.x + math.random(-1,1)
        p.y = p.y + math.random(-1,1)  

        if (event.entity.surface.get_tile(p).valid ~= true) then break end
      until(event.entity.surface.get_tile(p).name ~= "sacrificefill" )

      if (event.entity.surface.get_tile(p).valid == true) then 
        event.entity.surface.set_tiles({{name = "sacrificefill", position = p}})
      end
      
      
    end

  end
end)
