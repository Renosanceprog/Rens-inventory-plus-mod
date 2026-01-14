tag @p add usingsys
tag @p add using_farm_kit
clear @p
replaceitem entity @p[tag=usingsys] slot.inventory 0 lever
replaceitem entity @p[tag=usingsys] slot.inventory 1 crafter
replaceitem entity @p[tag=usingsys] slot.inventory 2 dropper
replaceitem entity @p[tag=usingsys] slot.inventory 3 dispenser
replaceitem entity @p[tag=usingsys] slot.inventory 4 hopper
replaceitem entity @p[tag=usingsys] slot.inventory 5 barrel
replaceitem entity @p[tag=usingsys] slot.inventory 6 target
replaceitem entity @p[tag=usingsys] slot.inventory 7 waxed_copper_bulb
replaceitem entity @p[tag=usingsys] slot.inventory 8 daylight_detector
replaceitem entity @p[tag=usingsys] slot.inventory 9 water_bucket
replaceitem entity @p[tag=usingsys] slot.inventory 10 lava_bucket
replaceitem entity @p[tag=usingsys] slot.inventory 11 blue_ice
replaceitem entity @p[tag=usingsys] slot.inventory 12 birch_fence
replaceitem entity @p[tag=usingsys] slot.inventory 13 spruce_trapdoor
replaceitem entity @p[tag=usingsys] slot.inventory 14 birch_fence_gate
replaceitem entity @p[tag=usingsys] slot.inventory 15 stone_brick_stairs
replaceitem entity @p[tag=usingsys] slot.inventory 16 honey_block
replaceitem entity @p[tag=usingsys] slot.inventory 17 soul_sand
replaceitem entity @p[tag=usingsys] slot.hotbar 0 redstone
replaceitem entity @p[tag=usingsys] slot.hotbar 1 glass
replaceitem entity @p[tag=usingsys] slot.hotbar 2 smooth_stone
replaceitem entity @p[tag=usingsys] slot.hotbar 3 repeater
replaceitem entity @p[tag=usingsys] slot.hotbar 4 comparator
replaceitem entity @p[tag=usingsys] slot.hotbar 5 redstone_torch
replaceitem entity @p[tag=usingsys] slot.hotbar 6 observer
replaceitem entity @p[tag=usingsys] slot.hotbar 7 sticky_piston
replaceitem entity @p[tag=usingsys] slot.hotbar 8 stone_button
replaceitem entity @p[tag=usingsys] slot.inventory 25 bridge:next_page
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say gave farm Kit to @p
tag @e remove usingsys
kill @e[type=item, name="§e§lGive Farm Redstone"]