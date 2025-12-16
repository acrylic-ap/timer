execute unless entity @e[type=block_display,tag=timer] run summon block_display ~ ~ ~ {Tags:["timer"]}
tp @e[type=block_display, limit=1, tag=timer] @p
data modify storage minecraft:title_message format set value {text:"엌 너무 못하는데?"}
data modify storage minecraft:actionbar_message format set value {text:"Time Over!"}
function timer:element_scoreboard_settings
function timer:element_timerobject_settings