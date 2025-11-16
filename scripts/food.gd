extends Area2D

var foods = ["toast", "pizza", "fries", "celcius"]
var ranChoice
@onready var sprite: AnimatedSprite2D = $Sprite2D
@onready var munch: AudioStreamPlayer2D = $munch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ranChoice = foods.pick_random()
	sprite.play(ranChoice)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	Globals.energy += 5
	self.queue_free()
	$munch.play()
