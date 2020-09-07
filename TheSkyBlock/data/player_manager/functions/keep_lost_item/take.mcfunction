#> player_manager:keep_lost_item/take
#
# プレイヤーのアイテムを保管するよ
#
# @within core:handler/death

#> Temp
# @private
    #declare storage player_manager:keep_lost_item/take

# Inventory -> Temp
    data modify storage player_manager:keep_lost_item/take Temp set from entity @s Inventory
# Slotを削除
    data remove storage player_manager:keep_lost_item/take Temp[].Slot
# UserStorage呼び出し
    function oh_my_dat:please
# IDをIDSetに追加
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1] run data modify storage oh_my_dat: IDSet append value -2147483648
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1] store result storage oh_my_dat: IDSet[-1] int 1 run scoreboard players get @s OhMyDatID
# Temp -> UserStorage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items append from storage player_manager:keep_lost_item/take Temp[]
    data remove storage player_manager:keep_lost_item/take Temp
#名前の取得
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run function lib:get_name
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name set from storage lib: Return.Name
# インベントリclear
    clear @s