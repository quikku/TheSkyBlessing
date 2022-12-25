#> api:rom/please
#
#
#
# @input storage api: Argument.Address : int @ 0..65535
# @api

# validate
    execute unless data storage api: Argument.Address run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Address","color":"red"}]
# 新たに提供する必要があるかをチェックする
    execute store result score $Address Temporary run data get storage api: Argument.ID
# 必要な場合は提供する
    execute unless score $Address Temporary = $LatestProvidedAddress Global run function rom:provide
# リセット
    data remove storage api: Argument.Address
    scoreboard players reset $Address Temporary
    scoreboard players reset $LatestProvidedAddress Global