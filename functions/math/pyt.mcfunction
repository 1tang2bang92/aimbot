##Function by NOPEname
#input: pyt.a & pyt.b
#output: pyt.return
#operation: sqrt(a^2+b^2)



#(a^2+b^2)
scoreboard players operation @s pyt.a *= @s pyt.a
scoreboard players operation @s pyt.b *= @s pyt.b
scoreboard players operation @s pyt.a += @s pyt.b

#sqrt
scoreboard players operation @s root.in = @s pyt.a
function math:root/tick
scoreboard players operation @s pyt.return = @s root.out