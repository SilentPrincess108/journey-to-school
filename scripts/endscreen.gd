extends Node

@onready var grade: AnimatedSprite2D = $grade
@onready var baldi: AnimatedSprite2D = $baldi


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.energy >= 30:
		grade.play("pass")
		baldi.play("happy")
	else:
		grade.play("fail")
		baldi.play("angry")
