##Function by NOPEname
##input root.in
##output root.out



#before loop
scoreboard players set math_root_tmp math.tmp 10
scoreboard players operation math_root_tmp root.in = @s root.in
function math:root/run_time
scoreboard players add @s math.tmp 8

scoreboard players operation @s root.in = math_root_tmp root.in
scoreboard players set math_root_tmp math.tmp 2
scoreboard players operation @s root.out = @s root.in
scoreboard players operation @s root.out /= math_root_tmp math.tmp
function math:root/loop