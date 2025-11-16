extends Node

@onready var grade: AnimatedSprite2D = $grade
@onready var baldi: AnimatedSprite2D = $baldi
@onready var energy: Label = $energy
@onready var result: Label = $result


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
	else:
		grade.play("fail")
		baldi.play("angry")
		energy.text = "Energy: Low " + "(" + str(Globals.energy) + ")"
		result.text = "FAIL"
