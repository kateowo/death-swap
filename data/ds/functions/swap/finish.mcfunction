# DS swap clean-up
# should only run upon swapping finish


# reduce interval
scoreboard players operation interval global -= interval_lower global

# scores
scoreboard players set swap_pass internal 0
scoreboard players set time_s internal 0
scoreboard players set swap internal 0
scoreboard players set swap_warn internal 0
scoreboard players set swap_count internal 0

# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Loop ended","color":"yellow"}

# tellraw
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You have been swapped!","color":"yellow"}]
# sfx
execute as @a at @s run playsound minecraft:ui.toast.in player @s
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
execute as @a at @s run playsound minecraft:entity.player.levelup player @s
# particles
execute as @a at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 20
execute as @a at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.25 30