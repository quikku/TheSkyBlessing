#> debug:change_believe/lexiel
#
# 信仰をlexielに変更します
#
# @private
# @user

# 信仰解除
    function debug:change_believe/none
# 信仰
    tag @s remove Believe.None
    function player_manager:god/lexiel/believe