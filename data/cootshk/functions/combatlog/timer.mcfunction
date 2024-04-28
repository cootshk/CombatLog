scoreboard players remove @s CombatTimer 1
execute store result score @s CombatTimerSeconds run scoreboard players get @s CombatTimer
scoreboard players operation @s CombatTimerSeconds /= 20 CombatTimerSeconds
execute unless score ShowMessage CombatLogSettings matches 1 run title @s actionbar [{"text":"Combat Timer: ", "color": "gold"},{"score":{"name":"@s","objective":"CombatTimerSeconds"}, "color": "blue"}, {"text": " Do not log out!", "color": "red", "bold": true}]
execute if score @s CombatTimer matches 0 run title @s actionbar ""
execute if score @s CombatTimer matches 0 run scoreboard players set @s IsInCombat 0