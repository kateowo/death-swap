# DS swap


# reset tags
tag @a remove swapped
tag @a remove last_swap_1
tag @a remove last
tag @a remove swap_1

# ensure swap function is not run 20 times (when time requirement met)
scoreboard players set swap_pass internal 1

# count players
scoreboard players set players internal 0
execute as @a run scoreboard players add players internal 1

# swap
execute if score players internal matches 3.. run scoreboard players set swap internal 1
# if only 2
execute if score players internal matches ..2 as @a at @s run function ds:swap/last