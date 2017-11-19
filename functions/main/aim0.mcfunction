##Function by NOPEname
##output: rrx, rry



#aim_at
scoreboard players tag @e[rm=1,c=1,tag=target] add aim_at

#get coordinates
function main:get_pos0
execute @e[tag=aim_at] ~ ~ ~ function main:get_pos0

#aim.x, aim.y, aim.z
scoreboard players operation main_aim_x aim.x = @s x
scoreboard players operation main_aim_x aim.x -= @e[tag=aim_at] x
scoreboard players operation main_aim_y aim.y = @s y
scoreboard players operation main_aim_y aim.y -= @e[tag=aim_at] y
scoreboard players operation main_aim_z aim.z = @s z
scoreboard players operation main_aim_z aim.z -= @e[tag=aim_at] z
scoreboard players operation @s aim.x = main_aim_x aim.x
scoreboard players operation @s aim.y = main_aim_y aim.y
scoreboard players operation @s aim.z = main_aim_z aim.z
scoreboard players set main_aim_neg tmp -1
execute @s[score_aim.x=-1] ~ ~ ~ scoreboard players operation @s aim.x *= main_aim_neg tmp
execute @s[score_aim.y=-1] ~ ~ ~ scoreboard players operation @s aim.y *= main_aim_neg tmp
execute @s[score_aim.z=-1] ~ ~ ~ scoreboard players operation @s aim.z *= main_aim_neg tmp

# calculate rrx & rry
function main:aim0/rrx
function main:aim0/rry

#adjust
scoreboard players set main_aim_tmp tmp 900
scoreboard players operation @s aim.x = main_aim_x aim.x
scoreboard players operation @s aim.y = main_aim_y aim.y
scoreboard players operation @s aim.z = main_aim_z aim.z
scoreboard players add @s[score_aim.x=-1,score_aim.z=-1] rry 2700
scoreboard players add @s[score_aim.x_min=0,score_aim.z_min=0] rry 900
execute @s[score_aim.x_min=0,score_aim.z=-1] ~ ~ ~ scoreboard players operation main_aim_tmp tmp -= @s rry
execute @s[score_aim.x_min=0,score_aim.z=-1] ~ ~ ~ scoreboard players operation @s rry = main_aim_tmp tmp
execute @s[score_aim.x=-1,score_aim.z_min=0] ~ ~ ~ scoreboard players operation main_aim_tmp tmp -= @s rry
execute @s[score_aim.x=-1,score_aim.z_min=0] ~ ~ ~ scoreboard players operation @s rry = main_aim_tmp tmp
scoreboard players add @s[score_aim.x=-1,score_aim.z_min=0] rry 1800
execute @s[score_aim.y=-1] ~ ~ ~ scoreboard players operation @s rrx *= main_aim_neg tmp

#remove aim_at
scoreboard players tag @e[tag=aim_at] remove aim_at

#rotate
function main:rotate/0.1