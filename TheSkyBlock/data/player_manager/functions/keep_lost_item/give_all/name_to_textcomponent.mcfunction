#> player_manager:keep_lost_item/give_all/name_to_textcomponent
#
# 名前をテキストコンポーネントに加工してチェストのNameに代入する
#
# @within function player_manager:keep_lost_item/give_all/packing.chest

#> Private
# @within * player_manager:keep_lost_item/give_all/name_to_textcomponent
    #declare storage player_manager:keep_lost_item/give_all/name_to_textcomponent

# 名前を取得し、TextComponentに加工して適用
    data modify storage player_manager:keep_lost_item/give_all/name_to_textcomponent String set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name
    execute in overworld run loot replace block 10000 0 10000 container.0 loot player_manager:keep_lost_item/give_all/name_to_textcomponent
    execute in overworld run data modify storage player_manager:keep_lost_item/give_all/give Chests[-1].tag.display.Name set from block 10000 0 10000 Items[0].tag.display.Name
    data remove storage player_manager:keep_lost_item/give_all/name_to_textcomponent String