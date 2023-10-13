
scoreboard players add @a pt_afk 0

# Set a player's team if they haven't joined one
execute as @a if score enabled player_tags matches 1 if entity @s[team=] run team join pt_am @s

# Set the player's team
execute as @a if score enabled player_tags matches 1 if entity @s[scores={player_tags=1..}] run function playertags:join_team

# Enable the objective
scoreboard players enable @a player_tags

# Remove any afk detectors not near a player
execute as @e[type=minecraft:text_display,tag=afk_detector] at @s unless entity @a[distance=0..0.0001,scores={pt_afk=0..}] run kill @s

# Reset afk timer & team for player
execute as @a if score enabled player_tags matches 1 unless entity @s[team=pt_zz] at @s unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run execute as @s run function playertags:transfer_to_active
execute as @a if score enabled player_tags matches 1 unless entity @s[team=pt_zz] at @s unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run scoreboard players reset @s pt_afk
execute as @a if score enabled player_tags matches 1 if entity @s[team=pt_zz] if score @s pt_afk matches 0.. run scoreboard players reset @s pt_afk

# Add 1 to the afk timer if a player is near an afk detector
execute as @a if score enabled player_tags matches 1 unless entity @s[team=pt_zz] unless score @s pt_afk matches 600.. at @s if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run scoreboard players add @s pt_afk 1
execute as @a if score enabled player_tags matches 1 unless entity @s[team=pt_zz] if score @s pt_afk matches 599 at @s if entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run function playertags:transfer_to_afk

# Summon afk detector
execute as @a if score enabled player_tags matches 1 unless entity @s[team=pt_zz] at @s unless entity @e[type=minecraft:text_display,tag=afk_detector,distance=0..0.0001] run summon minecraft:text_display ~ ~ ~ {Tags:["afk_detector"],default_background:0b,shadow:0b,see_through:1b,alignment:"center",text:'{"text":""}'}

schedule function playertags:tick 1t