# DS death checks


# swap gamemode
gamemode spectator @s
scoreboard players remove alive internal 1

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"☠","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@a[scores={death=1..}]","color":"red","bold":true},{"text":" has been eliminated!","color":"dark_red"}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s


# reset
scoreboard players reset @s death