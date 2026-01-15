tag @p add usingsys

playsound bundle.drop_contents @p ~~~ 0.5 1
playsound bucket.empty_powder_snow @p ~~~ 0.1 1.2

clear @p
give @p bucket 1000
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say gave 16-stackable fillers to @p
tag @e remove usingsys
kill @e[type=item, name="§r§2§l16 Stack Filler"]