
# Update player's team
execute if predicate playertags:is_book_frame at @s run function playertags:transfer/to/book_team

# Remove book frame from frame
execute unless predicate playertags:is_book_frame run function playertags:transfer/from/book_frame