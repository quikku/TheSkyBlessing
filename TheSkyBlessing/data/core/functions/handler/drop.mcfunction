#> core:handler/drop
#
# アイテムを投げた時に実行される
#
# @within function core:tick/player/

# 神器Asset用の誤検知対策タグ
    tag @s add StrictCheckMainhand
# Reset
    scoreboard players reset @s DropEvent
# アイテム捨てたとき帰ってくるように(これで捨てれてた場合知らん)
    data merge entity @e[type=item,distance=..3,sort=nearest,limit=1] {PickupDelay:0s}