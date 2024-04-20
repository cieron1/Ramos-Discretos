# Entidades
execute as @e[tag=monstro] run function banova:ramos/monstros/base
# execute as @e[type=!player,tag=especial] run function banova:entidades/base
execute as @e[type=item,nbt={Item: {id: "minecraft:filled_map", Count: 1b}}] run kill @s
execute as @e[type=!player,tag=D] run function banova:entidades/death

# Pessoas
execute as @a[scores={Jogando=1}] at @s if biome ~ ~ ~ minecraft:the_void run damage @s 1 minecraft:freeze at ~ ~ ~
give @a[scores={Jogando=1},nbt=!{Inventory: [{id: "minecraft:filled_map"}]}] minecraft:filled_map{tag: {display: {MapColor: 20237}}, map: 0} 1
execute as @a[scores={desiste=1..}] run function banova:ramos/desiste1

# Anti-males
execute as @a[nbt={SelectedItem: {id: "minecraft:clock", Count: 1b, tag: {numera: 1b}}}] run function banova:ramos/anti_males/numerador
execute as @e[type=item,nbt={Item: {tag: {atrasa: 1b}}}] if entity @e[tag=male,type=marker] run function banova:ramos/anti_males/atrasa
execute as @e[type=item,nbt={Item: {tag: {remedia: 1b}}}] if entity @e[tag=male,type=marker] run function banova:ramos/anti_males/remedia
execute as @e[type=item,nbt={Item: {tag: {detecta: 1b}}}] run function banova:ramos/anti_males/detecta

# Outres
execute as @a[scores={Jogando=1,Pont.1=1..}] run function banova:ramos/anti_males/detecta_timer
execute if entity @a[scores={Jogando=1}] run function banova:ramos/ciclo/base
execute if entity @a[scores={Jogando=1}] if entity @e[tag=male,type=marker] run function banova:ramos/males/ciclo
execute unless entity @e[tag=male,type=marker] run scoreboard players reset .male_estagio Tempo
execute unless entity @e[tag=male,type=marker] if entity @e[type=item,tag=sem_gravidade] as @e[type=item,tag=sem_gravidade] run function banova:ramos/males/estagios/fim_4a
execute as @a[y=300,dy=30] run spreadplayers ~ ~ 0 1 under 127 false @s

# Resets
execute as @a unless score @s Jogando matches 0..1 run function banova:outres/ramos/pessoa/reseta
function banova:scores_reset

# Entidades
# execute as @e[type=warden] run function banova:entidades/defensor
# execute as @e[type=item,nbt={Item: {Count: 1b, tag: {disco: 1b}}}] unless entity @s[x=-5,y=-45,z=-5,dx=10,dy=4,dz=10] run function banova:entidades/discos/base
# #execute as @e[type=item,nbt={Fire: 0s},tag=!fogo_fornalha] run function banova:entidades/fogo_fornalha
# execute as @e[type=experience_orb] run data merge entity @s {Value: 0}
# execute as @e[type=#banova:vida_extra,tag=!vida_extra] run function banova:entidades/vida_extra
# execute as @a[nbt={RootVehicle: {Entity: {Tags: ["masmo"]}}}] run scoreboard players set @s Invulnerabilidade 40
# scoreboard players remove @a[scores={Invulnerabilidade=1..}] Invulnerabilidade 1
# scoreboard players reset @a[scores={Invulnerabilidade=..0}] Invulnerabilidade
# execute as @e[tag=masmo,tag=carrega] at @s if entity @p[distance=..1.5,team=Pessoas] unless entity @p[distance=..1.5,team=Pessoas,scores={Invulnerabilidade=1..}] run ride @p[distance=..0.8,team=Pessoas] mount @s
# execute as @e[tag=masmo,tag=fuso_vida] run function banova:entidades/creeper
# execute as @e[tag=masmo,tag=sem_sufocar] run function banova:entidades/sem_sufoca
# execute as @e[tag=masmo,tag=bonus_sala] run function banova:entidades/bonus_sala