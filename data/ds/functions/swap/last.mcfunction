# DS swapping
# for odd-checks


# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Swapping 2 players (swap/last)","color":"yellow"}

# tag self [self]
tag @s add self
# tag @r to swap [alt]
tag @r[tag=swapped,tag=!self] add last_swap_1
# note: alt will be swapped again (they had previously swapped) to allow remaining 1 to swap
tag @a[tag=last_swap_1,limit=1] remove swapped

# set marker stand to temp-save your location [self-marker]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["last_swap_0"],Silent:1b}
tp @e[tag=last_swap_0,limit=1,distance=..5] @s
forceload add ~ ~

# tp self to alt
tp @s @a[tag=last_swap_1,limit=1]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You have been swapped with ","color":"yellow"},{"selector":"@a[tag=last_swap_1,limit=1]","color":"gold"},{"text":"!","color":"yellow"}]
execute if score logging internal matches 1.. run tellraw @a [{"text":"Swapped ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":" with ","color":"yellow"},{"selector":"@a[tag=last_swap_1,limit=1]","color":"gold"}]
# tp alt to self-marker
tp @a[tag=last_swap_1,limit=1] @e[tag=last_swap_0,limit=1]
tellraw @a[tag=last_swap_1,limit=1] ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You have been swapped with ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":"!","color":"yellow"}]
execute if score logging internal matches 1.. run tellraw @a [{"text":"Swapped ","color":"yellow"},{"selector":"@a[tag=last_swap_1,limit=1]","color":"gold"},{"text":" with ","color":"yellow"},{"selector":"@s","color":"gold"}]

# tag both with swapped (so odd check is not triggered again)
tag @a add swapped

# remove temp stuff
execute as @e[tag=last_swap_0,limit=1] at @s run forceload remove ~ ~
execute as @e[tag=last_swap_0,limit=1] at @s run kill @s
tag @a remove self

# logging
execute if score logging internal matches 1.. run tellraw @a {"text":"Swapped 2 players (swap/last)","color":"yellow"}