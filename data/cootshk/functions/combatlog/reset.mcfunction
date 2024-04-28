##
 # reset.mcfunction
 # combatlog
 #
 # Created by Cootshk.
##

scoreboard objectives add CurrentTick dummy
#coreboard objectives add PlayerTick dummy
scoreboard objectives add IsInCombat dummy
scoreboard objectives add CombatTimer dummy
scoreboard objectives add CombatTimerSeconds dummy
scoreboard players set 20 CombatTimerSeconds 20
scoreboard objectives add BypassCombatLog dummy
scoreboard objectives add CombatLogSettings dummy

execute unless score Duration CombatLogSettings matches 1..2147483647 run scoreboard players set Duration CombatLogSettings 600