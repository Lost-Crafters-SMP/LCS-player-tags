
execute if score @s pt_options matches 0.. run scoreboard players operation math.ticks pt_options = @s pt_options
execute unless score @s pt_options matches 0.. run scoreboard players operation math.ticks pt_options = timer pt_options_admin

scoreboard players set math.20 pt_options 20
scoreboard players set math.60 pt_options 60

scoreboard players operation math.seconds pt_options = math.ticks pt_options
scoreboard players operation math.seconds pt_options /= math.20 pt_options
scoreboard players operation math.minutes pt_options = math.seconds pt_options
scoreboard players operation math.minutes pt_options /= math.60 pt_options
scoreboard players operation math.hours pt_options = math.minutes pt_options
scoreboard players operation math.hours pt_options /= math.60 pt_options
scoreboard players operation math.minutes pt_options %= math.60 pt_options

tellraw @s ["","\n\n\n\n\n\n\n\n\n",{"text":"     Player Tags","color":"yellow"},{"text":" v1.0.4","color":"gold"},"\n",{"text":"          Made by ","color":"gray"},{"text":"Leialoha","underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/leialoha"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open Github","color":"gray"}]}},{"text":".","color":"gray"},"\n","\n","Player Settings:","\n",{"text":" •","color":"dark_gray"},{"text":" AFK Detection: ","color":"gray"},{"score":{"name":"math.hours","objective":"pt_options"}},"h",{"score":{"name":"math.minutes","objective":"pt_options"}},"m","       ",{"text":"«","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_tags set 200"},"hoverEvent":{"action":"show_text","contents":[{"text":"-30 minutes","color":"red"}]}}," ",{"text":"‹","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger player_tags set 201"},"hoverEvent":{"action":"show_text","contents":[{"text":"-1 minute","color":"red"}]}}," ",{"text":"⏹","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger player_tags set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset to default","color":"gray"}]}}," ",{"text":"›","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger player_tags set 203"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1 minute","color":"green"}]}}," ",{"text":"»","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger player_tags set 204"},"hoverEvent":{"action":"show_text","contents":[{"text":"+30 minutes","color":"green"}]}},"\n","\n","\n","\n","\n"]