tag @p add usingsys

playsound bundle.drop_contents @p ~~~ 0.5 1
playsound block.mud_bricks.hit @p ~~~ 0.1 1.2

clear @p
give @p brick 5000
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
tag @e remove usingsys
kill @e[type=item, name="§r§1§l64 Stack Filler"]