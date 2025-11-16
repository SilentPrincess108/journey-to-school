extends Area2D

var memes = ["Italian...", "6*"]
var ranChoice
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ranChoice = memes.pick_random()
	sprite.play(ranChoice)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(_body: CharacterBody2D) -> void:
	Globals.energy -= 10
	get_node("/root/level1/munch").play()
	print("??")
	self.queue_free()
