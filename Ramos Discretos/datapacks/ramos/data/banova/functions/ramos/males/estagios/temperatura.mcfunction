scoreboard players add @a[scores={Jogando=1}] Temperatura 1
execute as @a[scores={Jogando=1,Temperatura=3600..}] run function banova:ramos/males/estagios/temperatura_a
scoreboard players set @a[scores={agua=1..}] Temperatura 0
scoreboard players remove @a[predicate=banova:ramos/agua] Temperatura 55
execute as @a[scores={Jogando=1,Temperatura=0..}] unless entity @s[nbt={SelectedItem: {id: "minecraft:clock", Count: 1b, tag: {numera: 1b}}}] run title @s actionbar [{"text":"Temperatura: ","color":"gold","italic":false},{"score":{"name":"*","objective":"Temperatura"},"italic":false},{"text":" / 3600","italic":false}]