tp @e[type=block_display, limit=1, tag=timer] @p
execute as @e[type=block_display,tag=timer,limit=1] at @s run scoreboard players operation @s timer_time_by_minute = @s timer_time
execute as @e[type=block_display,tag=timer,limit=1] at @s run scoreboard players operation @s timer_time_by_minute /= @s twenty
execute as @e[type=block_display,tag=timer,limit=1] at @s run scoreboard players operation @s timer_time_by_second = @s timer_time_by_minute
execute as @e[type=block_display,tag=timer,limit=1] at @s run scoreboard players operation @s timer_time_by_second %= @s sixty
execute as @e[type=block_display,tag=timer,limit=1] at @s run scoreboard players operation @s timer_time_by_minute /= @s sixty

# 시간 초과
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1, timer_time=..0}] run function timer:stop

# 타이머
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1}] run function timer:countdown_loop
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1, timer_time_by_second=..9, timer_time_by_minute=..9}] run title @a actionbar ["남은 시간 [ 0",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":0",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1, timer_time_by_second=10.., timer_time_by_minute=..9}] run title @a actionbar ["남은 시간 [ 0",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1, timer_time_by_second=..9, timer_time_by_minute=10..}] run title @a actionbar ["남은 시간 [ ",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":0",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=1, timer_time_by_second=10.., timer_time_by_minute=10..}] run title @a actionbar ["남은 시간 [ ",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]

# 스톱워치
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=2}] run function timer:stopwatch_loop
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=2, timer_time_by_second=..9, timer_time_by_minute=..9}] run title @a actionbar ["시간 [ 0",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":0",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=2, timer_time_by_second=10.., timer_time_by_minute=..9}] run title @a actionbar ["시간 [ 0",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=2, timer_time_by_second=..9, timer_time_by_minute=10..}] run title @a actionbar ["시간 [ ",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":0",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]
execute as @e[type=block_display,tag=timer,limit=1] at @s run execute if entity @s[scores={timer_start=1, timer_type=2, timer_time_by_second=10.., timer_time_by_minute=10..}] run title @a actionbar ["시간 [ ",{"score":{"name":"@s","objective":"timer_time_by_minute"}},":",{"score":{"name":"@s","objective":"timer_time_by_second"}}, " ]"]