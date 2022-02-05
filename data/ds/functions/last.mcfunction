tag @e[tag=exist,tag=swapped,limit=1,sort=random] remove swapped

execute as @e[tag=exist,tag=!swapped,limit=1,sort=random] run say temp


# wegergerh

tag @e remove swapped

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["temp_1"]}
execute as @e[tag=temp_1] at @s run forceload add ~ ~

tag @r[distance=1..] add temp_0
# tp self
tp @s @e[tag=temp_0,limit=1]
# tp other to you
tp @e[tag=temp_0,limit=1] @e[tag=temp_1,limit=1]
tag @e remove temp_0

kill @e[tag=temp_1,type=armor_stand]

execute as @e[tag=temp_1] at @s run forceload remove ~ ~