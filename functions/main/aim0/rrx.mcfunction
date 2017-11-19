##Function by NOPEname
##input: aim.x & aim.y & aim.z
##output: rrx



#calculate aim.xz
scoreboard players operation @s pyt.a = @s aim.x
scoreboard players operation @s pyt.b = @s aim.z
function math:pyt
scoreboard players operation @s aim.xz = @s pyt.return

#~y / ~x
scoreboard players tag @s remove main_aim_1000
scoreboard players tag @s[score_aim.y=999999] add main_aim_1000
scoreboard players set main_aim_1000 tmp 1000
execute @s[tag=main_aim_1000] ~ ~ ~ scoreboard players operation @s aim.y *= main_aim_1000 tmp
execute @s[tag=!main_aim_1000] ~ ~ ~ scoreboard players operation @s aim.xz /= main_aim_1000 tmp

scoreboard players set @s[score_aim.xz=0] aim.xz 1
scoreboard players operation @s aim.y /= @s aim.xz

#arctan
execute @s[score_aim.y_min=1,score_aim.y=177] ~ ~ ~ function main:aim0/rrx10
execute @s[score_aim.y_min=178,score_aim.y=364] ~ ~ ~ function main:aim0/rrx20
execute @s[score_aim.y_min=365,score_aim.y=578] ~ ~ ~ function main:aim0/rrx30
execute @s[score_aim.y_min=579,score_aim.y=841] ~ ~ ~ function main:aim0/rrx40
execute @s[score_aim.y_min=842,score_aim.y=1194] ~ ~ ~ function main:aim0/rrx50
execute @s[score_aim.y_min=1195,score_aim.y=1738] ~ ~ ~ function main:aim0/rrx60
execute @s[score_aim.y_min=1739,score_aim.y=2761] ~ ~ ~ function main:aim0/rrx70
execute @s[score_aim.y_min=2762,score_aim.y=5728] ~ ~ ~ function main:aim0/rrx80
execute @s[score_aim.y_min=5729] ~ ~ ~ function main:aim0/rrx90
