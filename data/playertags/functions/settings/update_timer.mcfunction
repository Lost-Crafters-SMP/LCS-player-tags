
execute unless score @s pt_options matches 0.. run scoreboard players operation @s pt_options = timer pt_options_admin

execute if score @s player_tags matches 200 run scoreboard players remove @s pt_options 36000
execute if score @s player_tags matches 201 run scoreboard players remove @s pt_options 1200
execute if score @s player_tags matches 202 run scoreboard players reset @s pt_options
execute if score @s player_tags matches 203 run scoreboard players add @s pt_options 1200
execute if score @s player_tags matches 204 run scoreboard players add @s pt_options 36000

execute if score @s pt_options matches ..0 run scoreboard players set @s pt_options 0

scoreboard players set @s player_tags 101
