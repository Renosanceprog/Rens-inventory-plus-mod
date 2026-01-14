tag @p add usingsys
tag @p add using:component_kit
clear @p
replaceitem entity @p[tag=usingsys] slot.inventory 0 dropper
replaceitem entity @p[tag=usingsys] slot.inventory 1 lever
replaceitem entity @p[tag=usingsys] slot.inventory 2 piston
replaceitem entity @p[tag=usingsys] slot.inventory 3 target
replaceitem entity @p[tag=usingsys] slot.inventory 4 redstone_lamp
replaceitem entity @p[tag=usingsys] slot.inventory 5 hopper
replaceitem entity @p[tag=usingsys] slot.inventory 6 crafter
replaceitem entity @p[tag=usingsys] slot.inventory 7 redstone_block
replaceitem entity @p[tag=usingsys] slot.inventory 8 waxed_copper_bulb
replaceitem entity @p[tag=usingsys] slot.hotbar 0 redstone
replaceitem entity @p[tag=usingsys] slot.hotbar 1 white_stained_glass
replaceitem entity @p[tag=usingsys] slot.hotbar 2 white_concrete
replaceitem entity @p[tag=usingsys] slot.hotbar 3 repeater
replaceitem entity @p[tag=usingsys] slot.hotbar 4 comparator
replaceitem entity @p[tag=usingsys] slot.hotbar 5 redstone_torch
replaceitem entity @p[tag=usingsys] slot.hotbar 6 observer
replaceitem entity @p[tag=usingsys] slot.hotbar 7 sticky_piston
replaceitem entity @p[tag=usingsys] slot.hotbar 8 stone_button
replaceitem entity @p[tag=usingsys] slot.inventory 25 bridge:next_page
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say gave Component Kit to @p
tag @e remove usingsys
kill @e[type=item, name="§5§lGive Component Redstone"]