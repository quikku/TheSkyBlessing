#> asset:sacred_treasure/0269.holy_symbol_lv.10/trigger/effect/start
#
#
#
# @within function asset:sacred_treasure/0269.holy_symbol_lv.10/trigger/symbol/

# 処理化
    scoreboard players set @s 7H.HolySymbol 0
# ステータス強化
    # 攻撃速度
        attribute @s generic.attack_speed modifier add 1-0-1-0-10d00000000 "HolySymbol-Modifier" 0.19 multiply
    # 物理ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,269,0]
        data modify storage api: Argument.Amount set value 0.19
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/physical/add
    # 魔法ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,269,0]
        data modify storage api: Argument.Amount set value 0.19
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/magic/add