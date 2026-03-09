extends Resource
class_name UnitData

@export var id: String = ""                # unique id, e.g. "aeliana"
@export var display_name: String = ""      # shown to player

@export var max_hp: int = 10
@export var attack: int = 1
@export var defense: int = 0
@export var speed: int = 1

@export var element: Element               # link to an Element resource
@export var is_player_unit: bool = true    # true=player, false=enemy (for now)
