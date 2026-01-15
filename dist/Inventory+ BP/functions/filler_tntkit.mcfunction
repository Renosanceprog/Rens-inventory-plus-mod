tag @p add usingsys

playsound bundle.drop_contents @p ~~~ 0.5 1
playsound use.grass @p ~~~ 0.1 1

clear @p
give @p tnt 5000
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
tag @e remove usingsys
kill @e[type=item, name="§r§4§lTNT Filler"]