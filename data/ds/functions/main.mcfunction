# DS main loop


# join players
execute if score period internal matches 1 run team join players @a[team=!players]

# swap loop
execute if score period internal matches 1 if score swap internal matches 1.. run scoreboard players set swap_players internal 0
execute if score period internal matches 1 if score swap internal matches 1.. as @a[tag=!swapped] run scoreboard players add swap_players internal 1
# run
execute if score period internal matches 1 as @r at @s if score swap internal matches 1.. if score swap_players internal matches 2.. run function ds:swap/all
# odd check
execute if score period internal matches 1 as @a[tag=!swapped,limit=1] at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run function ds:swap/last
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set swap internal 0

# options
execute if score cut_clean global matches 1.. run function ds:extras/cut_clean
execute if score speed_uhc global matches 1.. run function ds:extras/speed_uhc

# death checks
execute if score period internal matches 1 as @a[scores={death=1..}] at @s run function ds:death
execute unless score period internal matches 1 run scoreboard players reset @a death

# win checks
execute if score period internal matches 1 if score alive internal matches ..1 run tag @a[gamemode=survival,limit=1] add win
execute if score period internal matches 1 if score alive internal matches ..1 run function ds:win