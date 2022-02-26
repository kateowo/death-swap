# DS swap clean-up (for players)
# should only run upon swapping finish


# sfx
playsound minecraft:ui.toast.in player @s
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
playsound minecraft:entity.player.levelup player @s
# particles
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 20
particle minecraft:smoke ~ ~ ~ 0 0 0 0.25 30