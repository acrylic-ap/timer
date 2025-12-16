$scoreboard players set @e[type=block_display, tag=timer] element_timer_time $(minutes)
execute as @e[type=block_display, tag=timer] at @s run scoreboard players operation @s element_timer_time *= @s sixty
$scoreboard players add @e[type=block_display, tag=timer] element_timer_time $(seconds)
execute as @e[type=block_display, tag=timer] at @s run scoreboard players operation @s element_timer_time *= @s twenty

$scoreboard players set @e[type=block_display, tag=timer] timer_display_result $(is_result_message)
$data modify storage minecraft:title_message format set value {text:"$(message)"}
$data modify storage minecraft:actionbar_message format set value {text:"$(actionbar_message)"}