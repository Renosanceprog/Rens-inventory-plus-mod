tag @p add usingsys
clear @p
function kit_usingremove
replaceitem entity @p[tag=usingsys] slot.inventory 23 bridge:filler_64
replaceitem entity @p[tag=usingsys] slot.inventory 24 bridge:filler_16
replaceitem entity @p[tag=usingsys] slot.inventory 25 bridge:filler_1
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:filler_tnt
execute at @p[tag=usingsys] run say Inventory+ accessed by @p
tag @e remove usingsys
kill @e[type=item, name="§d§lGive Filler inventory"]