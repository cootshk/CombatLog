gamerule showDeathMessages false
gamerule doImmediateRespawn true
kill @s
# [CombatLog] {player} logged out whilst in combat
execute if score ShowDeathMessage CombatLogSettings matches 1 run tellraw @a [{"text": "[", "color": "gold"}, {"text": "CombatLog", "color": "red"}, {"text": "] ", "color": "gold"}, {"selector": "@s", "color": "blue"}, {"text": " logged out whilst in combat", "color": "red"}]
gamerule showDeathMessages true
gamerule doImmediateRespawn false
scoreboard players set @s IsInCombat 0