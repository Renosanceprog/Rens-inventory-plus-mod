tag @p add usingsys
clear @p
give @p tnt 5000
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say gave TNT fillers to @p
tag @e remove usingsys
kill @e[type=item, name="§r§4§lTNT Filler"]