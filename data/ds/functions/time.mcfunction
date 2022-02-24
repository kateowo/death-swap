# DS time intervals


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# bossbar
# 0
execute if score period internal matches -1 run bossbar set ds:main name {"text":"The game will begin shortly!"}
# 1
execute if score period internal matches 1 run bossbar set ds:main name ["",{"text":"DEATH SWAP","color":"red","bold":true}]
execute if score period internal matches 1 store result bossbar ds:main value run scoreboard players get time_s internal
execute if score period internal matches 1 store result bossbar ds:main max run scoreboard players get interval global


# swap interval
execute unless score swap_pass internal matches 1.. if score time_s internal >= interval global run function ds:swap
# will only run once thanks to ^ which is set upon ds:swap being ran

# swap warn
execute unless score swap_warn internal matches 1.. if score time_s internal = interval_warn global run function ds:swap/warn

# swap warn
scoreboard players operation interval_count internal = interval global
scoreboard players operation interval_count internal -= 5 internal
execute unless score swap_count internal matches 1.. if score time_s internal = interval_count internal run function ds:swap/count