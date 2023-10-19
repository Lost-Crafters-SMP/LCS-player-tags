
# Join the team
execute if score @s player_tags matches 2 run team join pt_aa @s
execute if score @s player_tags matches 3 run team join pt_ab @s
execute if score @s player_tags matches 4 run team join pt_ac @s
execute if score @s player_tags matches 5 run team join pt_ad @s
execute if score @s player_tags matches 6 run team join pt_ae @s
execute if score @s player_tags matches 7 run team join pt_af @s
execute if score @s player_tags matches 8 run team join pt_ag @s
execute if score @s player_tags matches 9 run team join pt_ah @s
execute if score @s player_tags matches 10 run team join pt_ai @s
execute if score @s player_tags matches 11 run team join pt_aj @s
execute if score @s player_tags matches 12 run team join pt_ak @s
execute if score @s player_tags matches 13 run team join pt_al @s
execute if score @s player_tags matches 14 run team join pt_am @s
execute if score @s player_tags matches 15 run team join pt_an @s
execute if score @s player_tags matches 16 run team join pt_ao @s
execute if score @s player_tags matches 17 run team join pt_ap @s

execute if score @s player_tags matches 2..17 if data entity @s SelectedItem.tag.player_tags run function playertags:transfer/update_book

execute if score @s player_tags matches 99 run team join pt_zz @s
