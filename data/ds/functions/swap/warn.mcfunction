# DS swap 1m warn


# tellraw
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"One minute","color":"gold"},{"text":" until the next swap, get ready!","color":"yellow"}]
# sfx
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 50 0

# scores
scoreboard players set swap_warn internal 1