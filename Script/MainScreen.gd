extends Node2D

onready var screen_size = get_viewport_rect().size
onready var global_variables = get_node("/root/GlobalVariables")

var school = []

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	var num_fish = global_variables.num_fish
	var num_types = global_variables.num_types
	
	$Options/Names/Num_Fish.set_text("Fish Count: ")
	$Options/Names/Num_Types.set_text("Types Count: ")
	$Options/Names/Max_Speed.set_text("Max Speed: ")
	$Options/Names/View_Radius.set_text("View Radius: ")
	$Options/Names/View_Angle.set_text("View Angle: ")
	$Options/Names/Borders.set_text("Borders: ")
	$Options/Names/Alignment.set_text("Alignment: ")
	$Options/Names/Avoidance.set_text("Avoidance: ")
	$Options/Names/Cohesion.set_text("Cohesion: ")
	
	var fish_base = preload("res://Fish/Fish.tscn")
	
	var type_size = num_fish/num_types
	var type_counter = type_size
	var type_color = []
	var j = 0
	while j < num_types:
		type_color.push_back(get_color_set())
		j += 1
	j = 0
	
	for i in range(0, num_fish):
		var fish = fish_base.instance()
		$Fish.add_child(fish)
		fish.get_child(0).material.set_shader_param("time_offset", randf())
		fish.position = Vector2(randf() * screen_size.x, randf() * screen_size.y)
		fish.rotation = randf() * 360
		
		fish.type = j
		fish.modulate = get_color(type_color[j])
		if i >= type_counter:
			j += 1
			type_counter += type_size

		school.push_back(fish)
	
	for fish in school:
		fish.school = school


func get_color_set():
	var red = randi()%5
	var green = randi()%5
	var blue = randi()%5
	return [red, green, blue]


func get_color(number):
	var colors = []
	for i in number:
		if i == 0:
			colors.push_back(randf()/5.0)
		elif i == 1:
			colors.push_back(randf()/5.0+(1.0/5.0))
		elif i == 2:
			colors.push_back(randf()/5.0+(2.0/5.0))
		elif i == 3:
			colors.push_back(randf()/5.0+(3.0/5.0))
		elif i == 4:
			colors.push_back(randf()/5.0+(4.0/5.0))
	return Color(colors[0], colors[1], colors[2], 1.0)


func _on_Max_Speed_value_changed(value):
	for fish in school:
		fish.max_speed = value
	$Options/Names/Max_Speed.text = "Max Speed: " + str(value)


func _on_View_Radius_value_changed(value):
	for fish in school:
		fish.view_radius = value
	$Options/Names/View_Radius.text = "View Radius: " + str(value)


func _on_View_Angle_value_changed(value):
	for fish in school:
		fish.view_angle = value
	$Options/Names/View_Angle.text = "View Angle: " + str(value)


func _on_Borders_value_changed(value):
	for fish in school:
		fish.avoid_borders_strength = value
	$Options/Names/Borders.text = "Borders: " + str(value)


func _on_Alignment_value_changed(value):
	for fish in school:
		fish.alignment_strength = value
	$Options/Names/Alignment.text = "Alignment: " + str(value)


func _on_Avoidance_value_changed(value):
	for fish in school:
		fish.avoid_other_fish_strength = value
	$Options/Names/Avoidance.text = "Avoidance: " + str(value)


func _on_Cohesion_value_changed(value):
	for fish in school:
		fish.cohesion_strength = value
	$Options/Names/Cohesion.text = "Cohesion: " + str(value)


func _on_Button_pressed():
	$Options.visible = not $Options.visible
	$Options_Background.visible = not $Options_Background.visible


func _on_Reload_pressed():
	get_tree().reload_current_scene()


func _on_Num_Fish_value_changed(value):
	global_variables.num_fish = value
	$Options/Names/Num_Fish.text = "Fish Count: " + str(value)


func _on_Num_Types_value_changed(value):
	global_variables.num_types = value
	$Options/Names/Num_Types.text = "Types Count: " + str(value)
