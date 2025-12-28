extends Area2D

@onready var timer: Timer = $Timer

#This prints a message, slows down time, and resets the physics so that the player falls off the map when they die. 
func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
