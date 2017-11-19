##Function by NOPEname
##input: aim.x & aim.y & aim.z
##output: rrx



#calculate aim.xz
scoreboard players operation @s pyt.a = @s aim.x
scoreboard players operation @s pyt.b = @s aim.z
function math:pyt
scoreboard players operation @s aim.xz = @s pyt.return

#~y / ~x
scoreboard players tag @s remove main_aim_100
scoreboard players tag @s[score_aim.y=9999999] add main_aim_100
scoreboard players set main_aim_100 tmp 100
execute @s[tag=main_aim_100] ~ ~ ~ scoreboard players operation @s aim.y *= main_aim_100 tmp
execute @s[tag=!main_aim_100] ~ ~ ~ scoreboard players operation @s aim.xz /= main_aim_100 tmp

scoreboard players set @s[score_aim.xz=0] aim.xz 1
scoreboard players operation @s aim.y /= @s aim.xz

#arctan
execute @s[score_aim.y_min=1,score_aim.y=18] ~ ~ ~ function main:aim/rrx10
execute @s[score_aim.y_min=19,score_aim.y=37] ~ ~ ~ function main:aim/rrx20
execute @s[score_aim.y_min=38,score_aim.y=59] ~ ~ ~ function main:aim/rrx30
execute @s[score_aim.y_min=60,score_aim.y=85] ~ ~ ~ function main:aim/rrx40
execute @s[score_aim.y_min=86,score_aim.y=122] ~ ~ ~ function main:aim/rrx50
execute @s[score_aim.y_min=123,score_aim.y=179] ~ ~ ~ function main:aim/rrx60
execute @s[score_aim.y_min=180,score_aim.y=289] ~ ~ ~ function main:aim/rrx70
execute @s[score_aim.y_min=290,score_aim.y=630] ~ ~ ~ function main:aim/rrx80
execute @s[score_aim.y_min=631] ~ ~ ~ function main:aim/rrx90
