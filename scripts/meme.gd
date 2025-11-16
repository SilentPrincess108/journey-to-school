extends Area2D

var memes = ["Italian...", "6*"]
var ranChoice
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var munch: AudioStreamPlayer2D = $munch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ranChoice = memes.pick_random()
	sprite.play(ranChoice)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	$munch.play()
	Globals.energy -= 10
	self.queue_free()
