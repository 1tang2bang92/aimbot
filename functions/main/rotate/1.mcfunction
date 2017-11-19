##Function by NOPEname
##input: rrx, rry



#reset rotation
tp @s ~ ~ ~ 0 0

#rry
tp @s[score_rry_min=256] ~ ~ ~ ~256 ~
scoreboard players remove @s[score_rry_min=256] rry 256
tp @s[score_rry_min=128] ~ ~ ~ ~128 ~
scoreboard players remove @s[score_rry_min=128] rry 128
tp @s[score_rry_min=64] ~ ~ ~ ~64 ~
scoreboard players remove @s[score_rry_min=64] rry 64
tp @s[score_rry_min=32] ~ ~ ~ ~32 ~
scoreboard players remove @s[score_rry_min=32] rry 32
tp @s[score_rry_min=16] ~ ~ ~ ~16 ~
scoreboard players remove @s[score_rry_min=16] rry 16
tp @s[score_rry_min=8] ~ ~ ~ ~8 ~
scoreboard players remove @s[score_rry_min=8] rry 8
tp @s[score_rry_min=4] ~ ~ ~ ~4 ~
scoreboard players remove @s[score_rry_min=4] rry 4
tp @s[score_rry_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_rry_min=2] rry 2
tp @s[score_rry_min=1] ~ ~ ~ ~1 ~

#rrx
execute @s[score_rrx_min=1] ~ ~ ~ function main:rotate/rx
execute @s[score_rrx=-1] ~ ~ ~ function main:rotate/-rx