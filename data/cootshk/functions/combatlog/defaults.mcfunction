data modify storage cootshk:combatlog TeleportInCombat set value [{"text": "[", "color": "gold"}, {"text": "CombatLog", "color": "red"}, {"text": "] ", "color": "gold"}, {"text": "You cannot warp while you are in combat!", "color": "red"}]
scoreboard players set TicksPerSecond CombatLogSettings 20
scoreboard players set Duration CombatLogSettings 600
scoreboard players set DurationSeconds CombatLogSettings 30
scoreboard players set ShowDeathMessage CombatLogSettings 1

data merge storage cootshk:combatlog {DeathMessage:[{"text": "[", "color": "gold"}, {"text": "CombatLog", "color": "red"}, {"text": "] ", "color": "gold"}, {"selector": "@s", "color": "blue"}, {"text": " logged out whilst in combat", "color": "red"}]}

scoreboard players set HasLoaded CombatLogSettings 1