extends Control

enum Turn { PLAYER, ENEMY }

var current_turn: Turn = Turn.PLAYER

@onready var turn_label: Label = $turn_label
@onready var end_turn_button: Button = $end_turn_button

func _ready() -> void:
	_update_ui()
	end_turn_button.pressed.connect(_on_end_turn_pressed)

func _on_end_turn_pressed() -> void:
	if current_turn != Turn.PLAYER:
		return # ignore clicks during enemy turn

	current_turn = Turn.ENEMY
	_update_ui()

	# simulate enemy thinking/acting
	await get_tree().create_timer(2).timeout

	current_turn = Turn.PLAYER
	_update_ui()

func _update_ui() -> void:
	if current_turn == Turn.PLAYER:
		turn_label.text = "Turn: Player"
		end_turn_button.disabled = false
	else:
		turn_label.text = "Turn: Enemy"
		end_turn_button.disabled = true
