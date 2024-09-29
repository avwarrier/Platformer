extends CanvasLayer

@onready var score_label: Label = $ScoreLabel

func update_score(score):
	score_label.text = "Coins " + str(score)
