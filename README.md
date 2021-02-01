# Toxic Waste
The production of Science Packs also produce waste byproducts.

Toxic Waste introduces an entirely new challenge- garbage collection. The production of Science Packs now also produces immense amounts of Scrap and Sludge byproducts. These can be reduced to Toxic Waste- a very dense form of pollution that can be stored as an item. If left in the open, Toxic Waste will slowly emit pollution. If stored properly, this pollution can be mitigated, at a cost. But if destroyed, it will rapidly spew it's concentrated pollution into the air!

Your main goals will be to be
1) Manage the insane amount of clutter created by Scrap and Sludge.
2) Refine your Scrap and Sludge into Toxic Waste
3) Logistics and automation to quickly and safely store your Toxic Waste
4) Recycle your Scrap and Sludge, which produces random items. You'll have to implement a "sushi-train" style architecture to deal with a recipe that can possibly generate ANY known item.

## Design

### Scrap, Sludge and Toxic Waste

Three new items have been introduced- solid Scrap and fluid Sludge, which are byproducts of Science Pack production and concentrated Toxic Waste. Scrap and Sludge can be reduced into an infinitely potent form, "Toxic Waste". Toxic Waste is unlike most items in the game- a single unit of Toxic Waste represents all the Scrap and Sludge with which it was made. Toxic Waste emits pollution proportional to this concentration.

Toxic Waste emits pollution in 3 ways
1) Rapidly when destroyed
2) Moderately when left 'out in the open',
3) Slowly when stored properly.

### Waste refineries

You can recycle Scrap and Sludge or your can refine it. Recycling produces lots of Toxic Waste units but also produces random items. Refining Scrap and Sludge condenses the pollution into Toxic Waste.

2 new machines have been introduced- Scrap Compactors and Sludge Condensers. Each concentrate an infinite amount of Scrap or Sludge units into Toxic Waste. Any non-waste product put into a waste refiner will be turned into more waste. Refineries produce more pollution the longer you run them.

A new item has been added- The Toxic Katamari, which acts like a "seed" to condense Toxic Waste. It is made of 1 Toxic Waste. Feed a Toxic Katamari, along with many other units of Toxic Waste, to a refinery to condense many Toxic Waste units into a single Toxic Waste unit of combined potency.

The Scrap Recycler and the Sludge Recycler take 1 unit of Scrap or Sludge and emit 1 Toxic Waste and perhaps, 1 random item. These items are weighted so you are far more likely to get a useless thing, like iron-ore, but you may get lucky enough to find something more rare, even a satellite!

Scrap Recyclers will produce random solid items.
Fluid Recyclers will produce a barrel of a random fluid and require barrels. If no useful fluid is found, they emit the empty barrel.

### Waste storage

#### Toxic Chest
These containers can contain the pollution emitted by Toxic Waste, but have very limited space of only a single grid space, are modestly expensive and reusable.

#### Toxic Tomb
These buildings can contain the pollution emitted by Toxic Waste, but have very limited space of only a single grid space, have a very large footprint, are not expensive but permanent. If you damage a Toxic Tomb, the pollution will leak out. You can build these over contaminated soil.

#### Toxic Injector
The pumps can inject large amounts Toxic Waste into water quickly, where it will dissipate slowly. Landfilling will release the pollution.

#### Toxic Sequesterer
These act as reverse-mining machines which store Toxic Waste in the soil, where it will dissipate. You can build a Toxic Tomb over this contaminated land. Cementing over this soil will release the pollution.

#### Waste weapons

Toxic Waste has a single use- as a weapon that does zero damage, but spreads pollution. These weapons will antagonize biters and accelerate their evolution, while doing no damage at all. Use artillery to launch pollution to the far end of the map, attracting biters away from your base (and towards your enemies!).

### Polluters and Anti-Polluters

Polluters accept waste and emit it into the air as pollution. Anti-Polluters act oppositely- they use electricity to scrub pollution out of the air, exporting it as Toxic Waste.

### Technology and research

Field      | byproducts               | Unlocks
----------------------------------------------------------------------
Automation | zero waste
Logistics  | zero waste
Military   | 1 Scrap                  | Waste weapons
Chemical   | 1 Sludge                 | Waste refinement
Production | 10 Scrap & 10 Sludge     | Anti-Polluters and Polluters
Utility    | 100 Scrap & 100 Sludge   | Waste Sequesters and Injectors
Space      | 1000 Scrap & 1000 Sludge |

## Implementation

This mod is heavily based upon MemoryStorage. It makes some very select modifications.
- "Memory Elements" are now referred to as "Toxic Waste."
- "Memory Units" are now Scrap Compactors and Sludge Condensers. Anything placed within will instantly become more waste.

## Hints

A secret strategy can be used to rid yourself of Toxic Waste, for a sky-high cost.

## Credits
Thanks to the devs of the Memory Storage mod, without whom this work would not be possible.
