
# Summon armor stand
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{}],Tags:["player_tags","book"],Invisible:1b}

# Save the player's current book to storage
data modify storage player_tags book set from entity @s SelectedItem

# Update the book to include the new data
execute if score @s player_tags matches 2 run data modify storage player_tags book.tag.player_tags.team set value 1b
execute if score @s player_tags matches 3 run data modify storage player_tags book.tag.player_tags.team set value 2b
execute if score @s player_tags matches 4 run data modify storage player_tags book.tag.player_tags.team set value 3b
execute if score @s player_tags matches 5 run data modify storage player_tags book.tag.player_tags.team set value 4b
execute if score @s player_tags matches 6 run data modify storage player_tags book.tag.player_tags.team set value 5b
execute if score @s player_tags matches 7 run data modify storage player_tags book.tag.player_tags.team set value 6b
execute if score @s player_tags matches 8 run data modify storage player_tags book.tag.player_tags.team set value 7b
execute if score @s player_tags matches 9 run data modify storage player_tags book.tag.player_tags.team set value 8b
execute if score @s player_tags matches 10 run data modify storage player_tags book.tag.player_tags.team set value 9b
execute if score @s player_tags matches 11 run data modify storage player_tags book.tag.player_tags.team set value 10b
execute if score @s player_tags matches 12 run data modify storage player_tags book.tag.player_tags.team set value 11b
execute if score @s player_tags matches 13 run data modify storage player_tags book.tag.player_tags.team set value 12b
execute if score @s player_tags matches 14 run data modify storage player_tags book.tag.player_tags.team set value 13b
execute if score @s player_tags matches 15 run data modify storage player_tags book.tag.player_tags.team set value 14b
execute if score @s player_tags matches 16 run data modify storage player_tags book.tag.player_tags.team set value 15b
execute if score @s player_tags matches 17 run data modify storage player_tags book.tag.player_tags.team set value 16b

# Update the armor stand
data modify entity @e[type=minecraft:armor_stand,distance=0..2,sort=nearest,limit=1,tag=player_tags] ArmorItems[0] set from storage minecraft:player_tags book

# Remove the storage
data remove storage minecraft:player_tags book

# Give the book back
item replace entity @s weapon.mainhand from entity @e[type=minecraft:armor_stand,distance=0..2,sort=nearest,limit=1,tag=player_tags] armor.feet

# Remove the armor stand
kill @e[type=minecraft:armor_stand,distance=0..2,sort=nearest,limit=1,tag=player_tags]