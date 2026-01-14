replaceitem entity @p[tag=using:circuit_kit] slot.inventory 0 chest
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 1 redstone_lamp
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 2 crafter
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 3 target
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 4 dispenser
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 5 dropper
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 6 redstone_block
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 7 hopper
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 8 command_block
replaceitem entity @p[tag=using:circuit_kit] slot.inventory 25 bridge:back_page
replaceitem entity @p[tag=using:component_kit] slot.inventory 0 dispenser
replaceitem entity @p[tag=using:component_kit] slot.inventory 1 wooden_button
replaceitem entity @p[tag=using:component_kit] slot.inventory 2 paper 64
replaceitem entity @p[tag=using:component_kit] slot.inventory 3 birch_sign
replaceitem entity @p[tag=using:component_kit] slot.inventory 4 command_block
replaceitem entity @p[tag=using:component_kit] slot.inventory 5 structure_block
replaceitem entity @p[tag=using:component_kit] slot.inventory 6 smooth_stone_slab
replaceitem entity @p[tag=using:component_kit] slot.inventory 7 gold_block
replaceitem entity @p[tag=using:component_kit] slot.inventory 8 coal_block
replaceitem entity @p[tag=using:component_kit] slot.inventory 25 bridge:back_page
execute at @p[tag=using:farm_kit, tag=farm_kit_page1] run schedule delay add brick_next2 1 append
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 0 chest
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 1 shulker_box
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 2 composter
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 3 smoker
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 4 blast_furnace
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 5 furnace
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 6 fletching_table
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 7 magma
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 8 campfire
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 9 hopper_minecart
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 10 minecart
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 11 chest_minecart
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 12 rail
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 13 golden_rail
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 14 detector_rail
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 15 activator_rail
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 16 redstone_block
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 17 piston
replaceitem entity @p[tag=using:farm_kit, tag=!farm_kit_page1] slot.inventory 25 bridge:next_page
tag @p[tag=using:farm_kit, tag=!farm_kit_page1] add farm_kit_page1
kill @e[type=item, name="§lGo to extra items"]