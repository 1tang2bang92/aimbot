##Function by NOPEname
#input: sin
#output: sin
#operation: sin("sin")



#numerator
scoreboard players set math_sin_tmp math.tmp 4
scoreboard players operation @s math.tmp = @s sin
scoreboard players operation @s math.tmp *= math_sin_tmp math.tmp
scoreboard players set math_sin_tmp math.tmp 180
scoreboard players operation math_sin_tmp math.tmp -= @s sin
scoreboard players operation @s math.tmp *= math_sin_tmp math.tmp

#denominator
scoreboard players set math_sin_tmp math.tmp 180
scoreboard players operation math_sin_tmp math.tmp -= @s sin
scoreboard players operation @s sin *= math_sin_tmp math.tmp
scoreboard players set math_sin_tmp1 math.tmp 40500
scoreboard players operation math_sin_tmp1 math.tmp -= @s sin

#divide
scoreboard players operation @s sin = @s math.tmp
scoreboard players set math_sin_tmp math.tmp 1000
scoreboard players operation @s sin *= math_sin_tmp math.tmp
scoreboard players operation @s sin /= math_sin_tmp1 math.tmp