# DS start
# (if requirements met)


# count up players
scoreboard players reset alive internal
execute as @a[gamemode=!spectator] run scoreboard players add alive internal 1
# remove tags
tag @a remove win

# announce
scoreboard players operation interval_60 internal = interval global
scoreboard players operation interval_60 internal /= 60 internal
title @a title ["",{"text":"DEATH ","color":"red","bold":true},{"text":"SWAP","color":"yellow","bold":true}]
title @a subtitle [{"text":"You will be swapped after "},{"score":{"name":"interval_60","objective":"internal"}},{"text":" minutes, make sure you're prepared."}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# world
worldborder set 5000 5
# health boost
execute if score health_boost global matches 1.. run effect give @a[gamemode=!spectator] health_boost 9999 2 true

# set period
scoreboard players set period internal 1

# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Logging enabled via internal, log messages will appear like this","color":"yellow"}