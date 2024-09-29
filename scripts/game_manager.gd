extends Node

@onready var hud: CanvasLayer = $"../HUD"
@onready var pause: CanvasLayer = $"../Pause_Menu"

var paused = false

var score = 0

func add_point():
	score += 1
	hud.update_score(score)
	print(score)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pause.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		pause_menu()


func pause_menu():
	if paused:
		pause.hide()
		Engine.time_scale = 1
		paused = false
	else:
		pause.show()
		Engine.time_scale = 0
		paused = true
