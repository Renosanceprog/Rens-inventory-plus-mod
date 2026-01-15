tag @p add usingsys

playsound mob.player.hurt_on_fire @p ~~~ 0.3 2

clear @p
replaceitem entity @p[tag=usingsys] slot.inventory 26 bridge:menu_access
execute at @p[tag=usingsys] run say cleared @p's inventory
tag @e remove usingsys
kill @e[type=item, name="§c§lEmpty inventory"]