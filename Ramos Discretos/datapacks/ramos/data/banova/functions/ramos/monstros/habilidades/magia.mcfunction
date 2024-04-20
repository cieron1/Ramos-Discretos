execute if entity @p[gamemode=!spectator,gamemode=!creative,scores={Jogando=1},nbt={HurtTime: 5s}] run scoreboard players set @s Pont.1 1000
execute if entity @p[gamemode=!spectator,gamemode=!creative,scores={Jogando=1,dano_magia=1..}] run scoreboard players set @s Pont.1 1000
tp @p[gamemode=!spectator,gamemode=!creative,scores={Jogando=1}] @s[scores={Pont.1=..0}]
tp @s[scores={Pont.1=..0}] @p[gamemode=!spectator,gamemode=!creative,scores={Jogando=1}]
execute if entity @s[scores={Pont.1=..0}] run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 35 0.7
scoreboard players set @s[scores={Pont.1=..0}] Pont.1 1000