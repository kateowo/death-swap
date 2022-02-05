# DS time intervals


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# bossbar
execute if score period internal matches -1 run bossbar set ds:main name {"text":"The game will begin shortly!"}

execute if score period internal matches 1 run bossbar set ds:main name ["",{"text":"DEATH SWAP","color":"red","bold":true}]
execute if score period internal matches 1 run bossbar set ds:main max 1