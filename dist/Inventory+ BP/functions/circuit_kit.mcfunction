tag @p add usingsys
tag @p add using_circuit_kit
clear @p
replaceitem entity @p[tag=usingsys] slot.inventory 0 white_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 1 gray_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 2 brown_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 3 red_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 4 orange_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 5 yellow_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 6 lime_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 7 light_blue_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 8 purple_concrete
replaceitem entity @p[tag=usingsys] slot.inventory 9 white_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 10 gray_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 11 brown_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 12 red_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 13 orange_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 14 yellow_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 15 lime_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 16 light_blue_stained_glass
replaceitem entity @p[tag=usingsys] slot.inventory 17 purple_stained_glass
replaceitem entity @p[tag=usingsys] slot.hotbar 0 redstone
replaceitem entity @p[tag=usingsys] slot.hotbar 1 redstone_torch
replaceitem entity @p[tag=usingsys] slot.hotbar 2 repeater
replaceitem entity @p[tag=usingsys] slot.hotbar 3 comparator
replaceitem entity @p[tag=usingsys] slot.hotbar 4 stone_button
replaceitem entity @p[tag=usingsys] slot.hotbar 5 lever
replaceitem entity @p[tag=usingsys] slot.hotbar 6 sticky_piston
replaceitem entity @p[tag=usingsys] slot.hotbar 7 piston
replaceitem entity @p[tag=usingsys] slot.hotbar 8 observer
replaceitem entity @p[tag=usingsys] slot.inventory 25 bridge:next_page
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say gave Circuit Kit to @p
tag @e remove usingsys
kill @e[type=item, name="§9§lGive Circuit Redstone"]