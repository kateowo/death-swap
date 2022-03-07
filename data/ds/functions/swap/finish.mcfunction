# DS swap clean-up
# should only run upon swapping finish


# reduce interval
execute if score interval global >= interval_min global if score interval global >= hard_min internal run scoreboard players operation interval global -= interval_lower global
execute if score interval global >= interval_min global if score interval global >= hard_min internal run scoreboard players operation interval_warn global -= interval_lower global

# scores
scoreboard players set time_s internal 0
scoreboard players set swap internal 0
scoreboard players set swap_warn internal 0
scoreboard players set swap_count internal 0
scoreboard players set swap_pass internal 0

# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Loop ended","color":"yellow"}