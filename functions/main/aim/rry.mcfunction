##Function by NOPEname
##input: aim.x & aim.z
##output: rry



##~z / ~x
scoreboard players tag @s remove main_aim_100
scoreboard players tag @s[score_aim.z=9999999] add main_aim_100
scoreboard players set main_aim_100 tmp 100
execute @s[tag=main_aim_100] ~ ~ ~ scoreboard players operation @s aim.z *= main_aim_100 tmp
execute @s[tag=!main_aim_100] ~ ~ ~ scoreboard players operation @s aim.x /= main_aim_100 tmp

scoreboard players set @s[score_aim.x=0] aim.x 1
scoreboard players operation @s aim.z /= @s aim.x

#arctan
execute @s[score_aim.z_min=1,score_aim.z=18] ~ ~ ~ function main:aim/rry10
execute @s[score_aim.z_min=19,score_aim.z=37] ~ ~ ~ function main:aim/rry20
execute @s[score_aim.z_min=38,score_aim.z=59] ~ ~ ~ function main:aim/rry30
execute @s[score_aim.z_min=60,score_aim.z=85] ~ ~ ~ function main:aim/rry40
execute @s[score_aim.z_min=86,score_aim.z=122] ~ ~ ~ function main:aim/rry50
execute @s[score_aim.z_min=123,score_aim.z=179] ~ ~ ~ function main:aim/rry60
execute @s[score_aim.z_min=180,score_aim.z=289] ~ ~ ~ function main:aim/rry70
execute @s[score_aim.z_min=290,score_aim.z=630] ~ ~ ~ function main:aim/rry80
execute @s[score_aim.z_min=631] ~ ~ ~ function main:aim/rry90