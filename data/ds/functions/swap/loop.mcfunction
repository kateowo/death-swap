# DS swap loop
# (while swapping is going on)


# un-mark swap-pass if time is 0
execute if score time_s internal matches 0 if score swap_pass internal matches 1.. run scoreboard players set swap_pass internal 0

# logging
execute if score period internal matches 1 if score swap internal matches 1.. if score logging internal matches 1.. run tellraw @a {"text":"Loop started","color":"yellow"}

# count up players swapped
execute if score period internal matches 1 if score swap internal matches 1.. run scoreboard players set swap_players internal 0
execute if score period internal matches 1 if score swap internal matches 1.. as @a[tag=!swapped] run scoreboard players add swap_players internal 1

# run (if more than 2 left)
execute if score period internal matches 1 as @r at @s if score swap internal matches 1.. if score swap_players internal matches 2.. run function ds:swap/all
# run (if 1 left aka. odd check)
execute if score period internal matches 1 as @a[tag=!swapped,limit=1] at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run function ds:swap/last

# reset scores (when finished)
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set swap_pass internal 0
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 if score logging internal matches 1.. run tellraw @a {"text":"Loop ended","color":"yellow"}
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set time_s internal 0
execute if score period internal matches 1 as @a at @s if score swap internal matches 1.. if score swap_players internal matches ..1 run scoreboard players set swap internal 0