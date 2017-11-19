##Function by NOPEname
#input: pot.a & pot.b
#output: pot.return
#operation: a^b



#before loop
scoreboard players set @s[tag=!pot.loop] pot.return 1
scoreboard players tag @s add pot.loop

#loop
scoreboard players operation @s[score_pot.b_min=1] pot.return *= @s[score_pot.b_min=1] pot.a
scoreboard players remove @s[score_pot.b_min=1] pot.b 1

execute @s[score_pot.b_min=1] ~ ~ ~ function math:pot

#end loop
scoreboard players tag @s remove pot.loop












