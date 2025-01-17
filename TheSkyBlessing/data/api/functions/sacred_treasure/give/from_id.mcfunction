#> api:sacred_treasure/give/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash
# 代入
    data modify storage asset:context id set from storage api: Argument.ID
    data modify storage asset:context Type set value "give"
# 呼び出し
    execute if data storage api: Argument.ID run function #asset:sacred_treasure/give
# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
# リセット
    data remove storage api: Argument.ID