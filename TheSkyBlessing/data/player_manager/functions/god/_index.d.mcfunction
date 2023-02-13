#> player_manager:god/_index.d
# @private

#> Tags
# @within
#   function player_manager:god/**
#   function player_manager:set_team_and_per_health
#   function debug:change_believe/*
#   predicate player_manager:is_believe/*
    #declare tag Believe.None
    #declare tag Believe.Lexiel
    #declare tag Believe.RedKnight
    #declare tag Believe.MessengerOfThunder
    #declare tag Believe.Tutankhamen
    #declare tag Believe.Frestchika
    #declare tag Believe.Hetukedah
    #declare tag Believe.SinfulThoughts

#> storage for process
# @within function player_manager:god/mercy/**
    #declare storage player_manager:god

#> Tag for Nyaptov Passive
# @within
#   function core:handler/flying_elytra
#   function player_manager:god/nyaptov/passive
    #declare tag Nyaptov.FlyingElytra