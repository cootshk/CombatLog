scoreboard players set @s CombatLogConfig 0

tellraw @s ["", {"text": "[", "color": "gold"}, {"text": "CombatLog", "color": "red"}, {"text": "] ", "color": "gold"},{"text": "Settings"}]
tellraw @s ["", {"text": "Duration", "color": "gold", "underlined": true}, {"text": " (", "color": "yellow"}, {"text": "currently ", "color": "white"}, {"score": {"name": "DurationSeconds", "objective": "CombatLogSettings"}, "color": "aqua", "bold": true}, {"text": " seconds"}, {"text": ")", "color": "yellow"}]
tellraw @s ["", {"text": "[Set (Ticks)]", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set Duration CombatLogSettings 300"}, "color": "blue"}, " ", {"text": "[Set (Seconds)]", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set DurationSeconds CombatLogSettings 5"}, "color": "aqua"}]
tellraw @s ["", {"text": "Message", "color": "gold", "underlined": true}]
execute if score ShowDeathMessage CombatLogSettings matches 1 run tellraw @s  ["",    {"text": "[Enable]", "color": "green", "bold": true,  "clickEvent": {"action": "run_command", "value": "/scoreboard players set ShowDeathMessage SpawnSettings 1"}, "hoverEvent": {"action": "show_text", "value": {"text": "Show a message when someone logs out while in combat", "color": "green"}}}, " ", {"text": "[Disable]", "color": "red", "bold": false, "clickEvent": {"action": "run_command", "value": "/scoreboard players set ShowDeathMessage SpawnSettings 0"}, "hoverEvent": {"action": "show_text", "value": {"text": "Do not show a message when someone logs out while in combat", "color": "red"}}}]
execute unless score ShowDeathMessage CombatLogSettings matches 1 run tellraw @s ["", {"text": "[Enable]", "color": "green", "bold": false, "clickEvent": {"action": "run_command", "value": "/scoreboard players set ShowDeathMessage SpawnSettings 1"}, "hoverEvent": {"action": "show_text", "value": {"text": "Show a message when someone logs out while in combat", "color": "green"}}}, " ", {"text": "[Disable]", "color": "red", "bold": true,  "clickEvent": {"action": "run_command", "value": "/scoreboard players set ShowDeathMessage SpawnSettings 0"}, "hoverEvent": {"action": "show_text", "value": {"text": "Do not show a message when someone logs out while in combat", "color": "red"}}}]
tellraw @s ["", {"text": "[Preview]", "color": "blue", "clickEvent": {"action": "run_command", "value": "/tellraw @s {\"storage\":\"cootshk:combatlog\", \"nbt\": \"DeathMessage\", \"interpret\": true}"}, "hoverEvent": {"action": "show_text", "value": {"text": "Preview the death message", "color": "blue"}}}, " ", {"text": "[Customize]", "color": "aqua", "clickEvent": {"action": "suggest_command", "value": "/data modify storage cootshk:combatlog DeathMessage set value JSON_GOES_HERE"}, "hoverEvent": {"action": "show_text", "value": {"text": "Customize the death message\nRaw JSON Text is supported!", "color": "aqua"}}}," ", {"text": "[Help]", "clickEvent": {"action": "open_url", "value": "http://minecraft.tools/en/command-51264-combatlog-default-text"}, "bold": true, "color": "white"}]
