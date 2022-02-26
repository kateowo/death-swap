# DS defaults


# interval
scoreboard players set interval global 300
# (in seconds), 5 minutes

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1
# health boost
scoreboard players set health_boost global 1

# logging
scoreboard players set logging internal 0

# lower
scoreboard players set interval_lower global 20
# 1m warn
scoreboard players set interval_warn global 240

# world
worldborder set 10
gamerule doImmediateRespawn true
gamerule keepInventory false
effect clear @a
gamemode adventure @a[gamemode=!spectator]
# internal
scoreboard players set 5 internal 5
scoreboard players set 60 internal 60

# grace period
scoreboard players set grace_period global 300

# period
scoreboard players set period internal -1


scoreboard players set defaults internal 1