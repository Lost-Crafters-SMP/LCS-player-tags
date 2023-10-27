
# Run player checks
execute as @a at @s run function playertags:tick/player_checks

# Remove any afk detectors not near a player
execute as @e[type=minecraft:area_effect_cloud,tag=afk_detector] at @s unless entity @a[distance=0..0.0001,scores={pt_afk=0..}] run kill @s

schedule function playertags:tick 1t