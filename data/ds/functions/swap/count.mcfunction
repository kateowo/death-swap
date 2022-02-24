# DS swap-warn countdown

# 5
function ds:swap/count/5
# 4
schedule function ds:swap/count/4 1s
# 3
schedule function ds:swap/count/3 2s
# 2
schedule function ds:swap/count/2 3s
# 1
schedule function ds:swap/count/1 4s

# tellraw
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You have been swapped!","color":"yellow"}]
# sfx
execute as @a at @s run playsound minecraft:ui.toast.in player @s
execute as @a at @s run playsound minecraft:entity.player.levelup player @s