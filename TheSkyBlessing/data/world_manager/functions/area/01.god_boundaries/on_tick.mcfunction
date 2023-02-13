#> world_manager:area/01.god_boundaries/on_tick
#
#
#
# @within function world_manager:area/01.god_boundaries/

# 初期リス
    execute if predicate world_manager:area/01-98.world-spawn-higher run function world_manager:area/01-98-world-spawn-higher
    execute if predicate world_manager:area/01-99.world-spawn run function world_manager:area/01-99.world-spawn
# ゲート島
    execute if predicate world_manager:area/01-30.gate_island-lower run function world_manager:area/01-30.gate_island-lower