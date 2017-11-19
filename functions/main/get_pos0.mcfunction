##Function by NOPEname
##output: x & y & z



##get coordinates
function main:get_pos/x
function main:get_pos/z

#get y
summon area_effect_cloud ~ ~-0.4999 ~ {Duration:1,Tags:[get_y]}
scoreboard players set @s y -1
scoreboard players set @s[y=256,dy=255] y 256
execute @e[tag=get_y,y=0,dy=255] ~ ~ ~ function main:get_pos/y
scoreboard players operation @s y = @e[tag=get_y] y
kill @e[tag=get_y]

#0.setup
scoreboard players set @s tmp 10
scoreboard players operation @s x *= @s tmp
scoreboard players operation @s y *= @s tmp
scoreboard players operation @s z *= @s tmp

#summon 0.x
summon item_frame ~ -1 ~ {Tags:[get_pos0,get_posix]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~-0.45 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p0]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~-0.35 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p1]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~-0.25 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p2]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~-0.15 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p3]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~-0.05 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p4]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~0.05 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p5]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~0.15 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p6]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~0.25 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p7]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~0.35 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p8]}
execute @e[tag=get_posix] ~ ~ ~ summon area_effect_cloud ~0.45 ~ ~ {Duration:1,Tags:[get_pos0,get_posx0,get_p9]}
scoreboard players tag @e[tag=get_posx0,c=1] add gp_selectx

#summon 0.z
summon item_frame ~ -1 ~ {Tags:[get_pos0,get_posiz]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.009 {Duration:1,Tags:[get_pos0,get_posz0,get_p0]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.109 {Duration:1,Tags:[get_pos0,get_posz0,get_p1]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.209 {Duration:1,Tags:[get_pos0,get_posz0,get_p2]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.309 {Duration:1,Tags:[get_pos0,get_posz0,get_p3]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.409 {Duration:1,Tags:[get_pos0,get_posz0,get_p4]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.509 {Duration:1,Tags:[get_pos0,get_posz0,get_p5]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.609 {Duration:1,Tags:[get_pos0,get_posz0,get_p6]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.709 {Duration:1,Tags:[get_pos0,get_posz0,get_p7]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~0.809 {Duration:1,Tags:[get_pos0,get_posz0,get_p8]}
execute @e[tag=get_posiz] ~ ~ ~ summon area_effect_cloud ~ ~ ~1.009 {Duration:1,Tags:[get_pos0,get_posz0,get_p9]}
scoreboard players tag @e[tag=get_posz0,c=1] add gp_selectz

#summon 0.y
summon item_frame ~ ~256 ~ {Tags:[get_pos0,get_posiy]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~-0.46 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p0]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~-0.36 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p1]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~-0.26 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p2]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~-0.16 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p3]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~-0.06 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p4]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~0.04 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p5]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~0.14 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p6]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~0.24 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p7]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~0.34 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p8]}
execute @e[tag=get_posiy] ~ ~ ~ summon area_effect_cloud ~ ~0.44 ~ {Duration:1,Tags:[get_pos0,get_posy0,get_p9]}
execute @s ~ ~256 ~ scoreboard players tag @e[tag=get_posy0,c=1] add gp_selecty

#get 0.x
scoreboard players set @e[tag=get_p0] x 0
scoreboard players set @e[tag=get_p1] x 1
scoreboard players set @e[tag=get_p2] x 2
scoreboard players set @e[tag=get_p3] x 3
scoreboard players set @e[tag=get_p4] x 4
scoreboard players set @e[tag=get_p5] x 5
scoreboard players set @e[tag=get_p6] x 6
scoreboard players set @e[tag=get_p7] x 7
scoreboard players set @e[tag=get_p8] x 8
scoreboard players set @e[tag=get_p9] x 9

scoreboard players operation @e[tag=gp_selecty] y = @e[tag=gp_selecty] x
scoreboard players operation @e[tag=gp_selectz] z = @e[tag=gp_selectz] x

###tellraw @s {"score":{"objective":"z","name":"@e[tag=gp_selectz]"}}

#transfer 0.x
scoreboard players operation @s x += @e[tag=gp_selectx] x
scoreboard players operation @s z += @e[tag=gp_selectz] z
scoreboard players operation @s y += @e[tag=gp_selecty] y

kill @e[tag=get_pos0]