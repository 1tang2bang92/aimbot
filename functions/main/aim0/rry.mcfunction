##Function by NOPEname
##input: aim.x & aim.z
##output: rry



##~z / ~x
scoreboard players tag @s remove main_aim_1000
scoreboard players tag @s[score_aim.z=999999] add main_aim_1000
scoreboard players set main_aim_1000 tmp 1000
execute @s[tag=main_aim_1000] ~ ~ ~ scoreboard players operation @s aim.z *= main_aim_1000 tmp
execute @s[tag=!main_aim_1000] ~ ~ ~ scoreboard players operation @s aim.x /= main_aim_1000 tmp

scoreboard players set @s[score_aim.x=0] aim.x 1
scoreboard players operation @s aim.z /= @s aim.x

#arctan
execute @s[score_aim.z_min=1,score_aim.z=177] ~ ~ ~ function main:aim0/rry10
execute @s[score_aim.z_min=178,score_aim.z=364] ~ ~ ~ function main:aim0/rry20
execute @s[score_aim.z_min=365,score_aim.z=578] ~ ~ ~ function main:aim0/rry30
execute @s[score_aim.z_min=579,score_aim.z=841] ~ ~ ~ function main:aim0/rry40
execute @s[score_aim.z_min=842,score_aim.z=1194] ~ ~ ~ function main:aim0/rry50
execute @s[score_aim.z_min=1195,score_aim.z=1738] ~ ~ ~ function main:aim0/rry60
execute @s[score_aim.z_min=1739,score_aim.z=2761] ~ ~ ~ function main:aim0/rry70
execute @s[score_aim.z_min=2762,score_aim.z=5728] ~ ~ ~ function main:aim0/rry80
execute @s[score_aim.z_min=5729] ~ ~ ~ function main:aim0/rry90