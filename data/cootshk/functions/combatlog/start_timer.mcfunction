scoreboard players set @s IsInCombat 1

advancement revoke @s only cootshk:combatlog/ondamage
advancement revoke @s only cootshk:combatlog/onhit

# Default: 30 Seconds
#scoreboard players set @s CombatTimer 600
execute store result score @s CombatTimer run scoreboard players get Duration CombatLogSettings