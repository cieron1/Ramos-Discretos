fill -64 63 -64 63 63 63 bedrock
fill -64 64 -64 63 65 63 dirt
fill -64 66 -64 63 67 63 dirt
fill -64 68 -64 63 69 63 dirt
fill -64 70 -64 63 71 63 dirt
fill -64 72 -64 63 72 63 dirt
fill -64 73 -64 63 73 63 grass_block
fill -64 74 -64 63 75 63 air
fill -64 76 -64 63 77 63 air
fill -64 78 -64 63 79 63 air
fill -64 80 -64 63 81 63 air
fill -64 82 -64 63 83 63 air
fill -64 84 -64 63 85 63 air
fill -64 86 -64 63 87 63 air
fill -64 88 -64 63 89 63 air
fill -64 90 -64 63 91 63 air
fill -64 92 -64 63 93 63 air
fill -64 94 -64 63 95 63 air
fill -64 96 -64 63 97 63 air
fill -64 98 -64 63 99 63 air
fill -64 100 -64 63 101 63 air
fill -64 102 -64 63 103 63 air
fill -64 104 -64 63 105 63 air
fill -64 106 -64 63 107 63 air
fill -64 108 -64 63 109 63 air
fill -64 110 -64 63 111 63 air
fill -64 112 -64 63 113 63 air
fill -64 114 -64 63 115 63 air

fill -64 319 -64 63 319 63 air

#

fillbiome -64 62 -64 63 63 63 plains
fillbiome -64 64 -64 63 65 63 plains
fillbiome -64 66 -64 63 67 63 plains
fillbiome -64 68 -64 63 69 63 plains
fillbiome -64 70 -64 63 71 63 plains
fillbiome -64 72 -64 63 72 63 plains
fillbiome -64 73 -64 63 73 63 plains
fillbiome -64 74 -64 63 75 63 plains
fillbiome -64 76 -64 63 77 63 plains
fillbiome -64 78 -64 63 79 63 plains
fillbiome -64 80 -64 63 81 63 plains
fillbiome -64 82 -64 63 83 63 plains
fillbiome -64 84 -64 63 85 63 plains
fillbiome -64 86 -64 63 87 63 plains
fillbiome -64 88 -64 63 89 63 plains
fillbiome -64 90 -64 63 91 63 plains
fillbiome -64 92 -64 63 93 63 plains
#
fillbiome 65 62 -65 64 93 64 plains
fillbiome 64 62 65 -65 93 64 plains
fillbiome -66 62 64 -65 93 -65 plains
fillbiome -65 62 -66 64 93 -65 plains

kill @e[type=bee]
kill @e[type=item]
kill @e[type=wandering_trader]

setblock 0 1 0 air
scoreboard players reset @a Jogando
scoreboard players reset @a Temperatura
scoreboard players reset .male_bonus Tempo
kill @e[tag=deleta,type=marker]
kill @e[tag=criatura,type=!player,type=!marker]
kill @e[tag=male_ponta,type=marker]
fill -64 319 -64 63 318 63 air

# function banova:ramos/gera/base