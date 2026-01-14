tag @p add usingsys
clear @p
function kit_usingremove
replaceitem entity @p[tag=usingsys] slot.inventory 22 bridge:circuit_redstone
replaceitem entity @p[tag=usingsys] slot.inventory 23 bridge:component_redstone
replaceitem entity @p[tag=usingsys] slot.inventory 24 bridge:farm_redstone
replaceitem entity @p[tag=usingsys] slot.inventory 25 bridge:filler_inventory
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:empty_inventory
execute at @p[tag=usingsys] run say Inventory+ accessed by @p
tag @e remove usingsys
kill @e[type=item, name="§6§lInventory+ Access"]