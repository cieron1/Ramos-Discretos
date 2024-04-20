say Foi!

#schedule function banova:ramos/reset 1s
#setblock 0 1 0 air
#scoreboard players reset @a Jogando
#kill @e[tag=deleta,type=marker]
schedule function banova:ramos/desiste2 5s

# Dummies
scoreboard objectives add Constantes dummy
scoreboard objectives add Pont.1 dummy
scoreboard objectives add Pont.2 dummy
scoreboard objectives add Pont.3 dummy
scoreboard objectives add Jogando dummy
scoreboard objectives add Temperatura dummy
scoreboard objectives add Tempo dummy

# Constantes
scoreboard players set #1 Constantes 1
scoreboard players set #2 Constantes 2
scoreboard players set #3 Constantes 3
scoreboard players set #4 Constantes 4
scoreboard players set #5 Constantes 5

# Outres
scoreboard objectives add agua minecraft.used:potion
scoreboard objectives add dano_magia minecraft.custom:damage_dealt
scoreboard objectives add desiste trigger
scoreboard objectives add mortes deathCount
gamerule playersSleepingPercentage 101

# Receitas
schedule function banova:receitas 5s

# Marcadores
execute unless entity @e[type=marker,tag=ambul.marcador] run summon marker 0 0 0 {Tags: ["ambul.marcador"], data: {Offers: {Recipes: [{rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:bone_meal", Count: 3b}, sell: {id: "minecraft:emerald", Count: 2b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:terracotta", Count: 3b}, sell: {id: "minecraft:emerald", Count: 1b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:stick", Count: 64b}, sell: {id: "minecraft:emerald", Count: 2b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:cobblestone", Count: 12b}, sell: {id: "minecraft:emerald", Count: 1b}}]}}}
execute unless entity @e[type=marker,tag=ambul.male] run summon marker 0 0 0 {Tags: ["ambul.male"], data: {Offers: {Recipes: [{rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:sculk", Count: 18b}, sell: {id: "minecraft:emerald", Count: 4b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:glass", Count: 20b}, sell: {id: "minecraft:emerald", Count: 4b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:snow_block", Count: 8b}, buyB: {id: "minecraft:carved_pumpkin", Count: 4b}, sell: {id: "minecraft:emerald", Count: 4b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:nether_bricks", Count: 8b}, sell: {id: "minecraft:emerald", Count: 4b}}, {rewardExp: 0b, maxUses: 4, xp: 0, buy: {id: "minecraft:end_stone_bricks", Count: 9b}, sell: {id: "minecraft:emerald", Count: 4b}}]}}}

# scoreboard objectives add bloco.carvao minecraft.mined:coal_block
# scoreboard objectives add bloco.cascalho minecraft.mined:gravel
# scoreboard objectives add bloco.fornalha minecraft.mined:furnace
# scoreboard objectives add bloco.lapis minecraft.mined:lapis_block
# scoreboard objectives add bloco.mesa_trabalho minecraft.mined:crafting_table
# scoreboard objectives add escudo_bloqueio minecraft.custom:minecraft.damage_blocked_by_shield
# scoreboard objectives add Besta_inv minecraft.used:crossbow
# scoreboard objectives add D dummy
# scoreboard objectives remove Dano.item.chefe
# scoreboard objectives add Flecha_inv dummy
# scoreboard objectives add Invulnerabilidade dummy
# scoreboard objectives add Nivel_masmo dummy "Nível de Masmorra"
# scoreboard objectives add Sino minecraft.custom:minecraft.bell_ring
# scoreboard objectives add Tema_1 dummy
# scoreboard objectives add Tema_2 dummy
# scoreboard objectives add Tema_3 dummy
# scoreboard objectives add Tema_atual dummy
# scoreboard objectives add Tema_id dummy
# scoreboard objectives add Tema_id_temp dummy
# scoreboard objectives add xp dummy
# scoreboard objectives add xp_masmo dummy
# scoreboard objectives add xp_masmo_barreira dummy
# scoreboard objectives add xp_masmo_esperando dummy