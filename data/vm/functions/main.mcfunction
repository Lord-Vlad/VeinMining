

tag @e[type=item,nbt={Item:{id:"minecraft:coal"}}] add isCoal
tag @e[type=item,nbt={Item:{id:"minecraft:coal_ore"}}] add isCoal
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ore"}}] add isIron
tag @e[type=item,nbt={Item:{id:"minecraft:gold_ore"}}] add isGold
tag @e[type=item,nbt={Item:{id:"minecraft:redstone"}}] add isRedstone
tag @e[type=item,nbt={Item:{id:"minecraft:redstone_ore"}}] add isRedstone
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}}] add isLapis
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_ore"}}] add isLapis
tag @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] add isDiamond
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_ore"}}] add isDiamond
tag @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] add isEmerald
tag @e[type=item,nbt={Item:{id:"minecraft:emerald_ore"}}] add isEmerald

scoreboard players enable @a vm_toggle

title @a[scores={vm_toggle=1}] actionbar ["",{"text":"Enabled","color":"green"}]
execute as @a[scores={vm_toggle=1}] at @s run scoreboard players set @s vm_toggle 2

execute as @a[scores={vm_toggle=2}] at @s run function vm:mine

title @a[scores={vm_toggle=3}] actionbar ["",{"text":"Disabled","color":"red"}]
execute as @a[scores={vm_toggle=3}] at @s run scoreboard players set @s vm_toggle 0
