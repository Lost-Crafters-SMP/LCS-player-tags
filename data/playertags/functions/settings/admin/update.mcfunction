
execute if score @s pt_options_admin matches 1 run scoreboard players remove timer pt_options_admin 36000
execute if score @s pt_options_admin matches 2 run scoreboard players remove timer pt_options_admin 1200
execute if score @s pt_options_admin matches 3 run scoreboard players set timer pt_options_admin 6000
execute if score @s pt_options_admin matches 4 run scoreboard players add timer pt_options_admin 1200
execute if score @s pt_options_admin matches 5 run scoreboard players add timer pt_options_admin 36000

execute if score @s pt_options_admin matches 1..5 unless score timer pt_options_admin matches 0.. run scoreboard players set timer pt_options_admin 0

scoreboard players reset @s pt_options_admin
function playertags:settings/admin/show