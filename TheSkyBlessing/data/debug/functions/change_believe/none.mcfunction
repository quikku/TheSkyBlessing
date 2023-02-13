#> debug:change_believe/none
#
# 無信仰に変更します
#
# @within function debug:change_believe/*
# @user

# 共通
    tag @s add Believe.None
# 各神固有処理
    execute if entity @s[tag=Believe.Lexiel] run function player_manager:god/lexiel/unbelieve
    execute if entity @s[tag=Believe.RedKnight] run function player_manager:god/redknight/unbelieve
    execute if entity @s[tag=Believe.MessengerOfThunder] run function player_manager:god/messengerofthunder/unbelieve
    execute if entity @s[tag=Believe.Tutankhamen] run function player_manager:god/tutankhamen/unbelieve
    execute if entity @s[tag=Believe.Frestchika] run function player_manager:god/frestchika/unbelieve
