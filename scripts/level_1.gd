extends Node

@onready var ui: CanvasLayer = $UI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ui.get_node("energy").text = "Energy: " + str(Globals.energy)
	


func _on_portal_body_entered(body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://scenes/endscreen.tscn")
	
	
#	if AudioStreamPlayer2D.playing == false:
	#	$AudioStreamPlayer2D.play()
	#	pass
