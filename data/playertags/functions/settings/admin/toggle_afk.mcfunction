execute if score enabled pt_options_admin matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["player_tags","set_disabled"],Duration:1}
execute unless score enabled pt_options_admin matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["player_tags","set_enabled"],Duration:1}

execute if entity @e[tag=player_tags,tag=set_disabled] run scoreboard players set enabled pt_options_admin 0
execute if entity @e[tag=player_tags,tag=set_enabled] run scoreboard players set enabled pt_options_admin 1

kill @e[type=area_effect_cloud,nbt={Tags:["player_tags","set_enabled"]}]
kill @e[type=area_effect_cloud,nbt={Tags:["player_tags","set_disabled"]}]

function playertags:settings/admin/show