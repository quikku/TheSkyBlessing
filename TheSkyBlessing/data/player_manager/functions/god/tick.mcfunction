#> player_manager:god/tick
#
# 本来であれば神だけど今回は天使に置き換える
# ファンクション名そのままだけど...ま、多少はね？
#
# @within function core:tick/player/

# execute if entity @s[tag=Believe.None]
execute if entity @s[tag=Believe.Lexiel] run function player_manager:god/flora/passive
execute if entity @s[tag=Believe.RedKnight] run function player_manager:god/nyaptov/passive
execute if entity @s[tag=Believe.MessengerOfThunder] run function player_manager:god/rumor/passive/
execute if entity @s[tag=Believe.Tutankhamen] run function player_manager:god/urban/passive
execute if entity @s[tag=Believe.Frestchika] run function player_manager:god/wi-ki/passive/
execute if entity @s[tag=Believe.Hetukedah] run function player_manager:god/wi-ki/passive/
execute if entity @s[tag=Believe.SinfulThoughts] run function player_manager:god/wi-ki/passive/