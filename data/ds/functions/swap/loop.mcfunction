# DS swap loop
# (while swapping is going on)


# count up players swapped
execute if score period internal matches 1 if score swap internal matches 1.. run scoreboard players set swap_players internal 0
execute if score period internal matches 1 if score swap internal matches 1.. as @a[tag=!swapped] run scoreboard players add swap_players internal 1

# run (if more than 2 left)
execute if score period internal matches 1 as @r at @s if score swap internal matches 1.. if score swap_players internal matches 2.. run function ds:swap/all
# run (if 1 left aka. odd check)
execute if score period internal matches 1 as @a[tag=!swapped,limit=1] at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run function ds:swap/last

# reset scores
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set swap_pass internal 0
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set time_s internal 0
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set swap internal 0