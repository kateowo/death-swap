# DS start
# (if requirements met)


# count up players
scoreboard players reset alive internal
execute as @a run scoreboard players add alive internal 1
# remove tags
tag @a remove win

# announce
title @a title ["",{"text":"DEATH ","color":"red","bold":true},{"text":"SWAP","color":"yellow","bold":true}]
title @a subtitle {"text":"You will be swapped after a random interval of time, make sure you're prepared."}
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# world
worldborder set 5000 5

# set period
scoreboard players set period internal 1