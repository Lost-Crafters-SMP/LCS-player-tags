

# Reset afk timer & team for player
execute unless entity @s[team=pt_zz] unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run function playertags:transfer/to/active
execute unless entity @s[team=pt_zz] unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run scoreboard players reset @s pt_afk
execute if entity @s[team=pt_zz] if score @s pt_afk matches 0.. run scoreboard players reset @s pt_afk

# Add 1 to the afk timer if a player is near an afk detector
execute unless score @s pt_afk matches 0.. run scoreboard players set @s pt_afk 0

# Run if player timer is set
execute if score @s pt_options matches 0.. unless entity @s[team=pt_zz] if score @s pt_afk <= @s pt_options if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run scoreboard players add @s pt_afk 1
execute if score @s pt_options matches 0.. unless entity @s[team=pt_zz] if score @s pt_afk = @s pt_options if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run function playertags:transfer/from/active

# Use default options if player timer isn't set
execute unless score @s pt_options matches 0.. unless entity @s[team=pt_zz] if score @s pt_afk <= timer pt_options_admin if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run scoreboard players add @s pt_afk 1
execute unless score @s pt_options matches 0.. unless entity @s[team=pt_zz] if score @s pt_afk = timer pt_options_admin if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run function playertags:transfer/from/active

# Summon afk detector
execute unless entity @s[team=pt_zz] unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run summon minecraft:text_display ~ ~ ~ {Tags:["afk_detector"],default_background:0b,shadow:0b,see_through:1b,alignment:"center",text:'{"text":""}'}