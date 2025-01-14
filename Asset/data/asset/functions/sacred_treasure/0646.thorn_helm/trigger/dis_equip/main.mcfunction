#> asset:sacred_treasure/0646.thorn_helm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0646.thorn_helm/trigger/dis_equip/

#> Private
# @private
    #declare tag HZ.FullSet

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,646,6]
# 補正の削除
    function api:modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,646,6]
# 補正の削除
    function api:modifier/defense/thunder/remove

# フルセット解除
    execute if entity @s[tag=HZ.FullSet] run function asset:sacred_treasure/0647.thorn_armor/trigger/5.fullset_dis_equip