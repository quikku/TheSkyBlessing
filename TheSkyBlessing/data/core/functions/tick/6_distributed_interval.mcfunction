#> core:tick/6_distributed_interval
#
#
#
# @within function core:tick/


# 次のtickのグループを決める
    scoreboard players add $DistributeGroup Temporary 1
    scoreboard players operation $DistributeGroup Temporary %= $6 Const