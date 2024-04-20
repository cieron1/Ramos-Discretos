gamemode adventure @a[gamemode=survival,distance=..20]
clear @a[gamemode=adventure,distance=..20]
effect give @a[gamemode=adventure,distance=..20] saturation
scoreboard players set @a[gamemode=adventure,distance=..20] Jogando 0
execute if entity @p[gamemode=adventure,distance=..20] run gamerule doDaylightCycle false