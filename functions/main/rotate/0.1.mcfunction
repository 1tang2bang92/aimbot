##Function by NOPEname
##input: rrx, rry



#reset rotation
tp @s ~ ~ ~ 0 0

#rry
tp @s[score_rry_min=2560] ~ ~ ~ ~256 ~
scoreboard players remove @s[score_rry_min=2560] rry 2560
tp @s[score_rry_min=1280] ~ ~ ~ ~128 ~
scoreboard players remove @s[score_rry_min=1280] rry 1280
tp @s[score_rry_min=640] ~ ~ ~ ~64 ~
scoreboard players remove @s[score_rry_min=640] rry 640
tp @s[score_rry_min=320] ~ ~ ~ ~32 ~
scoreboard players remove @s[score_rry_min=320] rry 320
tp @s[score_rry_min=160] ~ ~ ~ ~16 ~
scoreboard players remove @s[score_rry_min=160] rry 160
tp @s[score_rry_min=80] ~ ~ ~ ~8 ~
scoreboard players remove @s[score_rry_min=80] rry 80
tp @s[score_rry_min=40] ~ ~ ~ ~4 ~
scoreboard players remove @s[score_rry_min=40] rry 40
tp @s[score_rry_min=20] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_rry_min=20] rry 20
tp @s[score_rry_min=10] ~ ~ ~ ~1 ~
scoreboard players remove @s[score_rry_min=10] rry 10

tp @s[score_rry_min=8] ~ ~ ~ ~0.8 ~
scoreboard players remove @s[score_rry_min=8] rry 8
tp @s[score_rry_min=4] ~ ~ ~ ~0.4 ~
scoreboard players remove @s[score_rry_min=4] rry 4
tp @s[score_rry_min=2] ~ ~ ~ ~0.2 ~
scoreboard players remove @s[score_rry_min=2] rry 2
tp @s[score_rry_min=1] ~ ~ ~ ~0.1 ~
scoreboard players remove @s[score_rry_min=1] rry 1

#rrx
execute @s[score_rrx_min=1] ~ ~ ~ function main:rotate/rx0
execute @s[score_rrx=-1] ~ ~ ~ function main:rotate/-rx0