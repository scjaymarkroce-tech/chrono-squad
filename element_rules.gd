extends Node
class_name ElementRules

const WIN_BONUS := 0.50    # +50% damage
const LOSE_PENALTY := 0.35 # -35% damage

static func damage_multiplier(attacker: Element, defender: Element) -> float:
	if attacker == null or defender == null:
		return 1.0

	# same element -> no change
	if attacker.id == defender.id:
		return 1.0

	# void is neutral (MVP choice)
	if attacker.id == "void" or defender.id == "void":
		return 1.0

	# Fire > Nature > Water > Fire
	if attacker.id == "fire" and defender.id == "nature":
		return 1.0 + WIN_BONUS
	if attacker.id == "nature" and defender.id == "water":
		return 1.0 + WIN_BONUS
	if attacker.id == "water" and defender.id == "fire":
		return 1.0 + WIN_BONUS

	# if both are in the main cycle and attacker isn't winning, attacker is losing
	if attacker.id in ["fire", "water", "nature"] and defender.id in ["fire", "water", "nature"]:
		return 1.0 - LOSE_PENALTY

	return 1.0
