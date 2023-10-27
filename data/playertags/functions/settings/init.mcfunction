# Display the message
tellraw @s[scores={player_tags=1}] ["","\n\n\n\n\n\n\n\n\n",{"text":"     Player Tags","color":"yellow"},{"text":" v1.0.4","color":"gold"},"\n",{"text":"          Made by ","color":"gray"},{"text":"Leialoha","underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/leialoha"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open Github","color":"gray"}]}},{"text":".","color":"gray"},"\n","\n","Click ",{"text":"here","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger player_tags set 100"}}," to change your nametag","\n","color. If you want, you can edit your","\n","player settings ",{"text":"here","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger player_tags set 101"}},".","\n","\n","Edit server settings ",{"text":"here","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function playertags:settings/admin/show"}},".","\n","\n","\n","View this datapack on ",{"text":"Github","underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/Lost-Crafters-SMP/PlayerTags-Datapack"}},".","\n"]

execute if score @s player_tags matches 2..17 run function playertags:settings/pick_color
execute if score @s player_tags matches 99 run function playertags:settings/pick_color
execute if score @s player_tags matches 200..204 run function playertags:settings/update_timer
execute if score @s player_tags matches 101 run function playertags:settings/show_player_settings
execute if score @s player_tags matches 100 run function playertags:settings/show_player_colors

scoreboard players reset @s player_tags
scoreboard players enable @s player_tags
