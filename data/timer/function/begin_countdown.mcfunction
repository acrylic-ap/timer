execute as @e[type=block_display,tag=timer] at @s run scoreboard players operation @s timer_time = @s element_timer_time
scoreboard players set @e[type=block_display,tag=timer] timer_start 1
scoreboard players set @e[type=block_display,tag=timer] timer_type 1