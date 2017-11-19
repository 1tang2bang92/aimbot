##Function by NOPEname



scoreboard players add @s[score_root.in_min=10] math.tmp 1
scoreboard players operation @s[score_root.in_min=10] root.in /= math_root_tmp math.tmp
execute @s[score_root.in_min=10] ~ ~ ~ function math:root/run_time