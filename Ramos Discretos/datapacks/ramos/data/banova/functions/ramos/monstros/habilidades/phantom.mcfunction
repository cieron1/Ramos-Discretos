execute as @s[nbt={Invulnerable: 0b},type=!phantom] run playsound minecraft:ambient.warped_forest.additions hostile @a ~ ~ ~ 3 2
execute as @s[nbt={Invulnerable: 0b},type=!phantom] run summon phantom ~ ~ ~ {Health: 42f, Tags: ["phantom", "D", "D30", "spread"], Attributes: [{Name: "generic.max_health", Base: 42}, {Name: "generic.knockback_resistance", Base: 0.0d}, {Name: "generic.movement_speed", Base: 0.138d}, {Name: "generic.attack_damage", Base: 4}, {Name: "generic.armor", Base: 0}], PersistenceRequired: 1b, DeathLootTable: "banova:ramos/entidades"}
kill @s[nbt={Invulnerable: 0b},type=!phantom]
#
execute if score @s Pont.1 matches ..0 run scoreboard players set @s Pont.1 100