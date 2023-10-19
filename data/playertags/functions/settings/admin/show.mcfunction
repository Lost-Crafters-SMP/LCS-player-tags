
# Show default afk time detection
scoreboard players operation math.ticks pt_options = timer pt_options_admin

scoreboard players set math.20 pt_options 20
scoreboard players set math.60 pt_options 60

scoreboard players operation math.seconds pt_options = math.ticks pt_options
scoreboard players operation math.seconds pt_options /= math.20 pt_options
scoreboard players operation math.minutes pt_options = math.seconds pt_options
scoreboard players operation math.minutes pt_options /= math.60 pt_options
scoreboard players operation math.hours pt_options = math.minutes pt_options
scoreboard players operation math.hours pt_options /= math.60 pt_options
scoreboard players operation math.minutes pt_options %= math.60 pt_options

# Spawn area effect cloud that displays if the afk detection is enabled
execute if score enabled pt_options_admin matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Enabled","color":"green"}',Tags:["player_tags","afk_detection_enabled"],Duration:1}
execute unless score enabled pt_options_admin matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Disabled","color":"red"}',Tags:["player_tags","afk_detection_enabled"],Duration:1}

tellraw @p ["","\n\n\n\n\n\n\n\n\n",{"text":"     Player Tags","color":"yellow"},{"text":" v1.0.0","color":"gold"},"\n",{"text":"          Made by ","color":"gray"},{"text":"Leialoha","underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/leialoha"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open Github","color":"gray"}]}},{"text":".","color":"gray"},"\n","\n","Admin Settings:","\n",{"text":" •","color":"dark_gray"},{"text":" AFK Detection: ","color":"gray"},{"score":{"name":"math.hours","objective":"pt_options"}},"h",{"score":{"name":"math.minutes","objective":"pt_options"}},"m","       ",{"text":"«","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s pt_options_admin 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"-30 minutes","color":"red"}]}}," ",{"text":"‹","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s pt_options_admin 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"-1 minute","color":"red"}]}}," ",{"text":"⏹","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s pt_options_admin 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset to default","color":"gray"}]}}," ",{"text":"›","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s pt_options_admin 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1 minute","color":"green"}]}}," ",{"text":"»","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s pt_options_admin 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"+30 minutes","color":"green"}]}},"\n",{"text":" •","color":"dark_gray"},{"text":" AFK Detection: ","color":"gray"},{"selector":"@e[tag=player_tags,tag=afk_detection_enabled]","clickEvent":{"action":"run_command","value":"/function playertags:settings/admin/toggle_afk"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to toggle","color":"gray"}]}},"\n","\n","\n","\n"]

kill @e[type=area_effect_cloud,nbt={Tags:["player_tags","afk_detection_enabled"]}]