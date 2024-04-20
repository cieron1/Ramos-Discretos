# Tempo
scoreboard players remove @s Pont.1 1

# Spreadplayers
data merge entity @s[tag=!spread] {Invulnerable: 1b, IsBaby: 0b, Silent: 1b, HandItems: [{id: "minecraft:air", Count: 1b}, {}], ArmorItems: [{id: "minecraft:air", Count: 1b}, {id: "minecraft:air", Count: 1b}, {id: "minecraft:air", Count: 1b}, {id: "minecraft:air", Count: 1b}]}
spreadplayers 0 0 1 64 under 100 false @s[tag=!spread]
spreadplayers 0 0 1 64 under 100 false @s[tag=!spread,predicate=banova:ramos/luz_5_15]
tag @s[tag=!spread] add spread

# Local
execute at @s run setblock ~ 319 ~ red_concrete

# Efeitos
effect give @s[nbt=!{ActiveEffects: [{Id: 14}]}] invisibility infinite 0 true
effect give @s[nbt=!{ActiveEffects: [{Id: 28}]}] slow_falling infinite 0 true
data merge entity @s {InWaterTime: 0}

# Invulnerabilidade
execute at @s unless score @s Tempo matches ..0 run function banova:ramos/monstros/invulnerabilidade
execute at @s if score @s Tempo matches ..0 run function banova:ramos/monstros/vulnerabilidade

# Partículas
execute if score @s Tempo matches -1200..1200 at @s run function banova:ramos/monstros/particulas
execute unless score @s Tempo matches -1200..1200 at @s run function banova:ramos/monstros/dicas

# Habilidades
execute as @s[tag=!tp_frente,tag=!acelera,tag=!levita] at @s unless entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] facing entity @p[gamemode=!spectator,gamemode=!creative] eyes rotated ~ 0 run tp ^ ^0.025 ^.5
execute as @s[tag=tp_frente] at @s run function banova:ramos/monstros/habilidades/tp_frente
execute as @s[tag=quebra,scores={Pont.1=..0}] at @s run function banova:ramos/monstros/habilidades/quebra
execute as @s[tag=superficie,scores={Pont.1=..0}] at @s run function banova:ramos/monstros/habilidades/superficie
execute as @s[tag=phantom] at @s run function banova:ramos/monstros/habilidades/phantom
execute as @s[tag=acelera] at @s run function banova:ramos/monstros/habilidades/acelera
execute as @s[tag=toupeira,scores={Pont.1=..0}] at @s run function banova:ramos/monstros/habilidades/toupeira
execute as @s[tag=levita] at @s run function banova:ramos/monstros/habilidades/levita
execute as @s[tag=ilusionista,scores={Pont.1=..0}] at @s run function banova:ramos/monstros/habilidades/ilusionista
execute as @s[tag=magia] at @s run function banova:ramos/monstros/habilidades/magia

# Tags
# tp_frente | quebra | superficie | phantom | acelera | toupeira | levita | ilusionista | magia | musgo | fogo | sombra | minera | fome | agua | fumaca | morcego | social

# Tempo
#execute if score @s Pont.1 matches ..0 run scoreboard players set @s Pont.1 60