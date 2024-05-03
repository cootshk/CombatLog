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
scoreboard objectives add BypassCombatLog dummy
scoreboard objectives add CombatLogSettings dummy
scoreboard objectives add CombatLogConfig trigger



execute unless score HasLoaded CombatLogSettings matches 1 run function cootshk:combatlog/defaults