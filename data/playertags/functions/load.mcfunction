scoreboard objectives add player_tags trigger ["Player Tags"]
scoreboard objectives add pt_options dummy ["Player Tags - Options"]
scoreboard objectives add pt_options_admin dummy ["Player Tags - Admin Options"]
scoreboard objectives add pt_afk dummy ["Player Tags - AFK Timer"]

execute unless score enabled pt_options_admin matches 0..1 run scoreboard players set enabled pt_options_admin 1
execute unless score timer pt_options_admin matches 0.. run scoreboard players set timer pt_options_admin 6000

team add pt_aa "Dark Red"
team add pt_ab "Red"
team add pt_ac "Gold"
team add pt_ad "Yellow"
team add pt_ae "Dark Green"
team add pt_af "Green"
team add pt_ag "Aqua"
team add pt_ah "Dark Aqua"
team add pt_ai "Dark Blue"
team add pt_aj "Blue"
team add pt_ak "Light Purple"
team add pt_al "Dark Purple"
team add pt_am "White"
team add pt_an "Gray"
team add pt_ao "Dark Gray"
team add pt_ap "Black"

team add pt_ba ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Red"]
team add pt_bb ["", {"text":"[AFK] ","color":"dark_gray"}, "Red"]
team add pt_bc ["", {"text":"[AFK] ","color":"dark_gray"}, "Gold"]
team add pt_bd ["", {"text":"[AFK] ","color":"dark_gray"}, "Yellow"]
team add pt_be ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Green"]
team add pt_bf ["", {"text":"[AFK] ","color":"dark_gray"}, "Green"]
team add pt_bg ["", {"text":"[AFK] ","color":"dark_gray"}, "Aqua"]
team add pt_bh ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Aqua"]
team add pt_bi ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Blue"]
team add pt_bj ["", {"text":"[AFK] ","color":"dark_gray"}, "Blue"]
team add pt_bk ["", {"text":"[AFK] ","color":"dark_gray"}, "Light Purple"]
team add pt_bl ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Purple"]
team add pt_bm ["", {"text":"[AFK] ","color":"dark_gray"}, "White"]
team add pt_bn ["", {"text":"[AFK] ","color":"dark_gray"}, "Gray"]
team add pt_bo ["", {"text":"[AFK] ","color":"dark_gray"}, "Dark Gray"]
team add pt_bp ["", {"text":"[AFK] ","color":"dark_gray"}, "Black"]

team add pt_zz ["", {"text":"[CAM] ","color":"dark_gray"}, "Cam Account"]

team modify pt_aa color dark_red
team modify pt_ba color dark_red
team modify pt_ab color red
team modify pt_bb color red
team modify pt_ac color gold
team modify pt_bc color gold
team modify pt_ad color yellow
team modify pt_bd color yellow
team modify pt_ae color dark_green
team modify pt_be color dark_green
team modify pt_af color green
team modify pt_bf color green
team modify pt_ag color aqua
team modify pt_bg color aqua
team modify pt_ah color dark_aqua
team modify pt_bh color dark_aqua
team modify pt_ai color dark_blue
team modify pt_bi color dark_blue
team modify pt_aj color blue
team modify pt_bj color blue
team modify pt_ak color light_purple
team modify pt_bk color light_purple
team modify pt_al color dark_purple
team modify pt_bl color dark_purple
team modify pt_am color white
team modify pt_bm color white
team modify pt_an color gray
team modify pt_bn color gray
team modify pt_ao color dark_gray
team modify pt_bo color dark_gray
team modify pt_ap color black
team modify pt_bp color black

team modify pt_zz color gray

team modify pt_ba prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bb prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bc prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bd prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_be prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bf prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bg prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bh prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bi prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bj prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bk prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bl prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bm prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bn prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bo prefix ["", {"text":"[AFK] ","color":"dark_gray"}]
team modify pt_bp prefix ["", {"text":"[AFK] ","color":"dark_gray"}]

team modify pt_zz prefix ["", {"text":"[CAM] ","color":"dark_gray"}]

schedule function playertags:tick 1t