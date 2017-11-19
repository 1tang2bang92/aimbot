##Function by NOPEname



#calculate root.out
scoreboard players operation math_root_tmp1 math.tmp = @s root.in
scoreboard players operation math_root_tmp1 math.tmp /= @s root.out
scoreboard players operation math_root_tmp1 math.tmp += @s root.out
scoreboard players operation math_root_tmp1 math.tmp /= math_root_tmp math.tmp
scoreboard players operation @s root.out = math_root_tmp1 math.tmp

#loop condition
scoreboard players remove @s[score_math.tmp_min=1] math.tmp 1
execute @s[score_math.tmp_min=1] ~ ~ ~ function math:root/loop
