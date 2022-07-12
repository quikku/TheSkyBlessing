#> asset:spawner/291/register
#
# スポナーの定義データ
#
# @within function asset:spawner/291/


# 重複防止レジストリへの登録
    data modify storage asset:spawner DPR set value {D:overworld,X:-45,Y:165,Z:-151}

# ID (int)
    data modify storage asset:spawner ID set value 291
# 体力 (int) このスポナーから召喚されたMobがN体殺されると破壊されるか
    data modify storage asset:spawner HP set value 4
# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value [{Id:83,Weight:4},{Id:114,Weight:1}]
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 4
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 4
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 20
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 100
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 400
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 6
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 16

function asset:spawner/common/register