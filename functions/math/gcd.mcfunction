##Function by NOPEname
#input: gcd.a & gcd.b
#output: gcd.return
#operation: gcd.return is greatest common divisor of gcd.a and gcd.b



#loop
scoreboard players operation @s math.tmp = @s gcd.a
scoreboard players operation @s math.tmp -= @s gcd.b
scoreboard players operation @s[score_math.tmp_min=1] gcd.a -= @s gcd.b
scoreboard players operation @s[score_math.tmp=0] gcd.b -= @s gcd.a

#testfor loop condition
scoreboard players tag @s remove gcd.end
scoreboard players tag @s[score_gcd.b_min=0,score_gcd.b=0] add gcd.end
execute @s[tag=!gcd.end] ~ ~ ~ function math:gcd

#output
scoreboard players operation @s gcd.return = @s gcd.a