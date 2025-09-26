extends Control

@onready var button: MarginContainer = $CpsLink




func _on_game_1_pressed() -> void:
	get_tree().change_scene_to_file("res://cps_game.tscn")


func _on_game_2_pressed() -> void:
	get_tree().change_scene_to_file("res://random_game.tscn")


func _on_game_3_pressed() -> void:
	get_tree().change_scene_to_file("res://reactio_time.tscn")
