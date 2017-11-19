##Function by NOPEname

#get pos & rot
function main:get_pos0
function main:get_rot/tick

#0.x
scoreboard players operation main_tmp x = @s x
scoreboard players operation main_tmp y = @s y
scoreboard players operation main_tmp z = @s z
scoreboard players set main_tmp tmp 10
scoreboard players operation @s x /= main_tmp tmp
scoreboard players operation @s y /= main_tmp tmp
scoreboard players operation @s z /= main_tmp tmp
scoreboard players operation main_tmp x %= main_tmp tmp
scoreboard players operation main_tmp y %= main_tmp tmp
scoreboard players operation main_tmp z %= main_tmp tmp
scoreboard players set main_tmp tmp -1

execute @s[score_x=-1] ~ ~ ~ scoreboard players operation main_tmp x *= main_tmp tmp
execute @s[score_y=-1] ~ ~ ~ scoreboard players operation main_tmp y *= main_tmp tmp
execute @s[score_z=-1] ~ ~ ~ scoreboard players operation main_tmp z *= main_tmp tmp

title @s actionbar {"text":"x: ","extra":[{"score":{"objective":"x","name":"@s"}},{"text":"."},{"score":{"objective":"x","name":"main_tmp"}},{"text":" y: "},{"score":{"objective":"y","name":"@s"}},{"text":"."},{"score":{"objective":"y","name":"main_tmp"}},{"text":" z: "},{"score":{"objective":"z","name":"@s"}},{"text":"."},{"score":{"objective":"z","name":"main_tmp"}},{"text":" // ry: ","color":"gold"},{"score":{"objective":"ry","name":"@s"},"color":"gold"},{"text":" rx: ","color":"gold"},{"score":{"objective":"rx","name":"@s"},"color":"gold"}]}