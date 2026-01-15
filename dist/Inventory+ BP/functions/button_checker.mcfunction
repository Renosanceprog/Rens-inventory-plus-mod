execute as @e[type=item, name="§6§lInventory+ Access"] at @p run function inventory_menu
execute as @e[type=item, name="§9§lGive Circuit Redstone"] at @p run function circuit_kit
execute as @e[type=item, name="§5§lGive Component Redstone"] at @p run function component_kit
execute as @e[type=item, name="§e§lGive Farm Redstone"] at @p run function farm_kit
execute as @e[type=item, name="§d§lGive Filler inventory"] at @p run function filler_menu
execute as @e[type=item, name="§c§lEmpty inventory"] at @p run function clear_inventory
execute as @e[type=item, name="§r§1§l64 Stack Filler"] at @p run function filler_64kit
execute as @e[type=item, name="§r§2§l16 Stack Filler"] at @p run function filler_16kit
execute as @e[type=item, name="§r§3§lNon-Stackable Filler"] at @p run function filler_1kit
execute as @e[type=item, name="§r§4§lTNT Filler"] at @p run function filler_tntkit
execute as @e[type=item, name="§lGo to extra items"] at @p run function brick_next
execute as @e[type=item, name="§lGo back to main kit"] at @p run function brick_back

# --- SAVE/LOAD SYSTEM ---
# 1. Detect "Save Kit" item -> Force nearest player to send the signal -> Kill item
execute as @e[type=item,name="§l§sSave current inventory"] at @s run execute as @p run scriptevent invplus:save_trigger
execute as @e[type=item,name="§l§sSave current inventory"] run kill @s

# 2. Detect "Load Kit" item -> Force nearest player to send the signal -> Kill item
execute as @e[type=item,name="§l§dLoad saved inventory"] at @s run execute as @p run scriptevent invplus:load_trigger
execute as @e[type=item,name="§l§dLoad saved inventory"] run kill @s