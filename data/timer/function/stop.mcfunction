scoreboard players set @e[type=block_display,tag=timer] timer_start 0
execute if score @e[type=block_display, tag=timer,limit=1] timer_display_result matches 1 run function timer:stop_message

execute as @e[type=block_display, tag=timer, limit=1] run execute if score @s passed_sound matches 4 run execute store result score @s passed_sound run random value 1..3
execute as @e[type=block_display, tag=timer, limit=1] run execute if score @s failed_sound matches 5 run execute store result score @s failed_sound run random value 1..4

execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={passed_sound=1, timer_time=1..}] run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={passed_sound=2, timer_time=1..}] run execute as @a at @s run playsound minecraft:entity.ender_dragon.death player @s
execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={passed_sound=3, timer_time=1..}] run execute as @a at @s run playsound minecraft:custom.levelup player @s

execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={failed_sound=1, timer_time=..0}] run execute as @a at @s run playsound minecraft:ambient.cave player @s
execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={failed_sound=2, timer_time=..0}] run execute as @a at @s run playsound music_disc.11 player @s
execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={failed_sound=3, timer_time=..0}] run execute as @a at @s run playsound music_disc.13 player @s
execute as @e[type=block_display, tag=timer, limit=1] run execute if entity @s[scores={failed_sound=4, timer_time=..0}] run execute as @a at @s run playsound entity.goat.ambient player @s