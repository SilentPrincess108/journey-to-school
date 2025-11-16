extends Node

@onready var grade: AnimatedSprite2D = $grade
@onready var baldi: AnimatedSprite2D = $baldi
@onready var energy: Label = $energy
@onready var result: Label = $result
@onready var comment: Label = $comment


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.energy >= 30:
		grade.play("pass")
		baldi.play("happy")
		energy.text = "Energy: High " + "(" + str(Globals.energy) + ")"
		result.text = "PASS"
		comment.text = "You get good grade at school!  Your teacher is very happy! Congratulations!"
		
	else:
		grade.play("fail")
		baldi.play("angry")
		energy.text = "Energy: Low " + "(" + str(Globals.energy) + ")"
		result.text = "FAIL"
		comment.text = "Brainrot suck all your energy! You get bad grade at school and your teacher is very angry! BE CAREFUL TONIGHT!!!"


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_title_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/titlescreen.tscn")
