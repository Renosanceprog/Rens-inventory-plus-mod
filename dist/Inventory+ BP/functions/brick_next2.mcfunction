playsound item.book.page_turn @p ~~~ 0.1 1

replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 0 birch_pressure_plate
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 1 stone_pressure_plate
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 2 tripwire_hook
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 3 string
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 4 slime
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 5 trident
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 6 bed
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 7 brewing_stand
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 8 birch_sign
replaceitem entity @p[tag=using_farm_kit, tag=farm_kit_page1] slot.inventory 25 bridge:back_page
tag @p[tag=using_farm_kit, tag=farm_kit_page1] remove farm_kit_page1
kill @e[type=item, name="§lGo to extra items"]