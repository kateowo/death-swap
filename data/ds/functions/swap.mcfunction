# DS swap


# reset tags
tag @a remove swapped
tag @a remove last_swap_1
tag @a remove last
tag @a remove swap_1

# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Ran function ds:swap, scoreboards set","color":"yellow"}

# ensure swap function is not run 20 times (when time requirement met)
scoreboard players set swap_pass internal 1

# count players
scoreboard players set players internal 0
execute as @a run scoreboard players add players internal 1

# swap
execute if score players internal matches 3.. run scoreboard players set swap internal 1
# if only 2
execute if score players internal matches ..2 run scoreboard players set time_s internal 0
execute if score players internal matches ..2 run tag @r[gamemode=!spectator] add swapped
execute if score players internal matches ..2 as @r[tag=!swapped,gamemode=!spectator] at @s run function ds:swap/last