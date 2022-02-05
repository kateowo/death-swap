# DS start


# count up players
scoreboard players reset alive internal
execute as @a run scoreboard players add alive internal 1

# remove tags
tag @a remove win

# set period
scoreboard players set period internal 1