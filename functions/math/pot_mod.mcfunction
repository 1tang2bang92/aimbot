##Function by NOPEname
#input: pot.a & pot.b % pot.x
#output: pot.return
#operation: (a*a%x)*b



#before loop
scoreboard players set @s[tag=!pot.loop] pot.return 1
scoreboard players tag @s add pot.loop

#loop
scoreboard players operation @s[score_pot.b_min=1] pot.return *= @s[score_pot.b_min=1] pot.a
scoreboard players operation @s[score_pot.b_min=1] pot.return %= @s[score_pot.b_min=1] pot.x
scoreboard players remove @s[score_pot.b_min=1] pot.b 1

execute @s[score_pot.b_min=1] ~ ~ ~ function math:pot_mod

#end loop
scoreboard players tag @s remove pot.loop
