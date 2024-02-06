extends Node

signal experience_vial_collected(number: float)
signal ability_upgrades_added(upgrade: Upgrade, current_upgrades: Dictionary)
signal player_damaged


func emit_experience_vial_collected(number: float) -> void:
	experience_vial_collected.emit(number)


func emit_ability_upgrade_added(
	upgrade: Upgrade,
	current_upgrades: Dictionary) -> void:

	ability_upgrades_added.emit(upgrade, current_upgrades)


func emit_player_damaged() -> void:
	player_damaged.emit()
