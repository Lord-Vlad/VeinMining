

tag @e[type=item,nbt={Item:{id:"minecraft:coal"}}] add isCoal
#tag @e[type=item,nbt={Item:{id:"minecraft:coal_ore"}}] add isCoal
#tag @e[type=item,nbt={Item:{id:"minecraft:birch_log"}}] add isLog
#tag @e[type=item,nbt={Item:{id:"minecraft:spruce_log"}}] add isLog
#tag @e[type=item,nbt={Item:{id:"minecraft:jungle_log"}}] add isLog
#tag @e[type=item,nbt={Item:{id:"minecraft:acacia_log"}}] add isLog
#tag @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"}}] add isLog

scoreboard players enable @a vm_toggle

title @a[scores={vm_toggle=1}] actionbar ["",{"text":"Enabled","color":"green"}]
execute as @a[scores={vm_toggle=1}] at @s run scoreboard players set @s vm_toggle 2

execute as @a[scores={vm_toggle=2}] at @s run function vm:mine

execute as @a[scores={vm_toggle=3}] at @s run scoreboard players set @s vm_toggle 0
