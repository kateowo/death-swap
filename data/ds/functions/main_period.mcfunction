# DS main period switchover


# announce
title @a title ["",{"text":"DEATH ","color":"red","bold":true},{"text":"SWAP","color":"yellow","bold":true}]
title @a subtitle [{"text":"You will be swapped after "},{"score":{"name":"interval_60","objective":"internal"}},{"text":" minutes, make sure you're prepared."}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# effects
effect clear @a resistance
effect give @a regeneration 1 255 true

scoreboard players set time internal 0
scoreboard players set time_s internal 0
scoreboard players set period internal 1