# DS swapping
# for odd-checks and 2 players


# tag self
tag @s add self
# choose random player
tag @r[tag=swapped,tag=!self] add last_swap_1
tag @a[tag=last_swap_1,limit=1] remove swapped

# set marker stand to temp-save location
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["last_swap_0"]}
tp @e[tag=last_swap_0,limit=1,distance=..5] @s
forceload add ~ ~

# swap with random player
tp @s @a[tag=last_swap_1,limit=1]
tp @a[tag=last_swap_1,limit=1] @e[tag=last_swap_0,limit=1]

# tag with swapped
tag @a add swapped

# remove marker stand
execute as @e[tag=last_swap_0,limit=1] at @s run forceload remove ~ ~
execute as @e[tag=last_swap_0,limit=1] at @s run kill @s

# remove self tag
tag @a remove self