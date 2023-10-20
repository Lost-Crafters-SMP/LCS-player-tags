

# Run afk checks
execute if score enabled pt_options_admin matches 1 run function playertags:tick/afk_checks

# Set a player's team if they haven't joined one
execute if entity @s[team=] run team join pt_am @s

# Update the player's settings
execute if entity @s[scores={player_tags=1..}] run function playertags:settings/init
execute if score @s pt_options_admin = @s pt_options_admin run function playertags:settings/admin/update

# Enable the objective
scoreboard players enable @a player_tags

# Changes book to custom book
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{pages:[],title:"Player Tags"}}}] run function playertags:transfer/book

# Run book checks
execute as @e[type=minecraft:item_frame,distance=0..10,tag=book_frame,tag=player_tags] run function playertags:tick/book_checks
execute as @e[type=minecraft:glow_item_frame,distance=0..10,tag=book_frame,tag=player_tags] run function playertags:tick/book_checks

# Update book frame from book
execute as @e[type=minecraft:item_frame,distance=0..10,tag=!book_frame,tag=!player_tags] if predicate playertags:is_book_frame run function playertags:transfer/to/book_frame
execute as @e[type=minecraft:glow_item_frame,distance=0..10,tag=!book_frame,tag=!player_tags] if predicate playertags:is_book_frame run function playertags:transfer/to/book_frame
