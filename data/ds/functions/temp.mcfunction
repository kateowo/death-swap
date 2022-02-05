tag @r add temp
tp @s @a[tag=temp,limit=1]
tp @a[tag=temp,limit=1] @s

tag @s add swapped
tag @a[tag=temp,limit=1] add swapped
tag @a[tag=temp,limit=1] remove temp