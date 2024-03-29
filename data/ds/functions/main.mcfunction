# DS main loop


# world
execute if score show_interval global matches 1.. run bossbar set ds:main players @a
execute unless score show_interval global matches 1.. run bossbar set ds:main players
# grace period
execute if score period internal matches 0 run bossbar set ds:grace players @a
execute unless score period internal matches 0 run bossbar set ds:grace players
# join players
## if not a spectator
execute if score period internal matches 0..1 run team join players @a[team=!players,gamemode=!spectator]
execute if score period internal matches 0..1 run team leave @a[gamemode=spectator]

# swap loop
execute if score period internal matches 1 run function ds:swap/loop
# time loop
execute if score period internal matches 0..1 run function ds:time

# options
execute if score cut_clean global matches 1.. run function ds:extras/cut_clean
execute if score speed_uhc global matches 1.. run function ds:extras/speed_uhc
execute if score speed_uhc global matches 1.. if score patch_grindstone_exploit global matches 1.. run function ds:extras/grindstone

# death checks
execute if score period internal matches 1 as @a[scores={death=1..}] at @s run function ds:death
execute unless score period internal matches 1 run scoreboard players reset @a death

# win checks
execute if score period internal matches 1 if score alive internal matches ..1 run tag @a[gamemode=survival,limit=1] add win
execute if score period internal matches 1 if score alive internal matches ..1 run function ds:win

# period checks
function ds:last_login