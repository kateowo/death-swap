# DS swapping


# tag self
tag @s add self
# choose random player
tag @r[tag=swapped,tag=!self] add swap_1

# set marker stand to temp-save location
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["swap_0"]}
tp @e[tag=swap_0,limit=1,distance=..5] @s
forceload add ~ ~

# swap with random player
tp @s @a[tag=swap_1,limit=1]
tp @a[tag=swap_1,limit=1] @e[tag=swap_0,limit=1]

# tag with swapped
tag @s add swapped
tag @a[tag=swap_1,limit=1] add swapped

# remove marker stand
execute as @e[tag=swap_0,limit=1] at @s run forceload remove ~ ~
execute as @e[tag=swap_0,limit=1] at @s run kill @s

# remove self tag
tag @a remove self