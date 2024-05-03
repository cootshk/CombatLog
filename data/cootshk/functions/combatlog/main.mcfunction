##
 # main.mcfunction
 # combatlog
 #
 # Created by Cootshk.
##

# Update duration
execute unless score Duration CombatLogSettings = CurrentDuration CombatLogSettings run function cootshk:combatlog/unconvert_duration
execute unless score DurationSeconds CombatLogSettings = CurrentDurationSeconds CombatLogSettings run function cootshk:combatlog/convert_duration

execute as @a unless score @s BypassCombatLog matches -2147483648..2147483647 run scoreboard players set @s BypassCombatLog 0
execute as @a unless score @s CombatTimer matches -2147483648..2147483647 store result score @s CurrentTick run scoreboard players get CurrentServerTick CombatLogSettings
execute as @a unless score @s IsInCombat matches -2147483648..2147483647 run scoreboard players set @s IsInCombat 0

scoreboard players add CurrentServerTick CombatLogSettings 1
scoreboard players add @a CurrentTick 1

execute as @a if score @s IsInCombat matches 1 unless score @s CurrentTick = CurrentServerTick CombatLogSettings run function cootshk:combatlog/die
execute as @a if score @s IsInCombat matches 0 store result score @s CurrentTick run scoreboard players get CurrentServerTick CombatLogSettings

execute as @a if score @s CombatTimer matches 1.. run function cootshk:combatlog/timer

execute as @a[gamemode=creative] run scoreboard players enable @s CombatLogConfig
execute as @a if score @s CombatLogConfig matches 1 run function cootshk:combatlog/config

#execute as @a store result score @s CurrentTick run scoreboard players get CurrentServerTick CurrentTick
