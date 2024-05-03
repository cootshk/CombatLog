# DurationSeconds -> CurrentDurationSeconds
execute store result score CurrentDurationSeconds CombatLogSettings run scoreboard players get DurationSeconds CombatLogSettings
# CurrentDurationSeconds -> CurrentDuration
execute store result score CurrentDuration CombatLogSettings run scoreboard players get CurrentDurationSeconds CombatLogSettings
# multiply by 20 (default TPS)
scoreboard players operation CurrentDuration CombatLogSettings *= TicksPerSecond CombatLogSettings
# CurrentDuration -> Duration
execute store result score Duration CombatLogSettings run scoreboard players get CurrentDuration CombatLogSettings
#tellraw @a "TEST: Duration updated"

# Duration & DurationSeconds are shown
# DurationSeconds -> CurrentDurationSeconds -> CurrentDuration * 20 -> Duration