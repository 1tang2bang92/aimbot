##Function by NOPEname

scoreboard objectives add main.output dummy
scoreboard objectives add keyboard.input dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add rx dummy
scoreboard objectives add ry dummy
scoreboard objectives add rrx dummy
scoreboard objectives add rry dummy
scoreboard objectives add tmp dummy
scoreboard objectives add aim.x dummy
scoreboard objectives add aim.y dummy
scoreboard objectives add aim.z dummy
scoreboard objectives add aim.xz dummy
function math:install
tellraw @a {"text":"\n\n-Installed 'main' functions successfully\n"}