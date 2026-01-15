tag @p add usingsys

playsound bundle.drop_contents @p ~~~ 0.5 1
playsound item.trident.throw @p ~~~ 0.1 1.2

clear @p
give @p trident 1000
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
tag @e remove usingsys
kill @e[type=item, name="§r§3§lNon-Stackable Filler"]