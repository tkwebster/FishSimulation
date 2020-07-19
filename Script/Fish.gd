extends Node2D

onready var screen_size = get_viewport_rect().size

var school = []
var velocity = Vector2()
var type = 0

export var target_speed = 50.0
export var max_speed = 250.0
export var view_radius = 125.0
export var view_angle = 270.0
export var comfort_radius = 20.0
export var count_strength = 2.0
export var avoid_ovelap_strength = 100.0
export var avoid_borders_strength = 10.0
export var avoid_other_fish_strength = 25.0
export var alignment_strength = 20.0
export var cohesion_strength = 5.0
export var borders = true

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(rand_range(-1, 1), rand_range(-1, 1)).normalized() * target_speed

func wrap_screen():
	self.position.x = wrapf(self.position.x, -10, screen_size.x+10)
	self.position.y = wrapf(self.position.y, -10, screen_size.y+10)

func avoid_borders():
	var avoid_borders_vector = Vector2()
	
	if (self.position.x) >= (screen_size.x - view_radius):
		var border_power = self.position.x 
		avoid_borders_vector[0] -= 5
	if (self.position.x) <= (view_radius):
		avoid_borders_vector[0] += 5
	if (self.position.y) >= (screen_size.y - view_radius):
		avoid_borders_vector[1] -= 5
	if (self.position.y) <= (view_radius):
		avoid_borders_vector[1] += 5
	
	if (self.position.x) >= (screen_size.x - 10):
		avoid_borders_vector[0] -= 1000
	if (self.position.x) <= (10):
		avoid_borders_vector[0] += 1000
	if (self.position.y) >= (screen_size.y - 10):
		avoid_borders_vector[1] -= 1000
	if (self.position.y) <= (10):
		avoid_borders_vector[1] += 1000

	avoid_borders_vector = avoid_borders_vector * avoid_borders_strength

	return avoid_borders_vector

func get_fish_in_vision():
	var neighbors = []
	
	for fish in school:
		if fish != self:
			if fish.type == self.type:
				if self.position.distance_to(fish.position) < self.view_radius:
					var fish_angle = rad2deg((self.position - fish.position).normalized().angle())
					if abs(self.rotation-fish_angle) < (view_angle/2.0):
						neighbors.push_back(fish)
	return neighbors

func avoid_other_fish_logic():
	var avoid_vector = Vector2()
	var count = 0
	
	for fish in school:
		if fish != self:
			if fish.type != self.type:
				if self.position.distance_to(fish.position) < self.view_radius:
					var fish_angle = rad2deg((self.position - fish.position).normalized().angle())
					if abs(self.rotation-fish_angle) < (view_angle/2.0):
						avoid_vector += (self.position - fish.position)
						count += 1

	var count_modifier = (count + school.size())/school.size() * count_strength
	avoid_vector = avoid_vector.normalized() * count_modifier * avoid_other_fish_strength

	return avoid_vector

func avoid_overlap_logic():
	var avoid_vector = Vector2()
	var count = 0
	
	for fish in school:
		if self.position.distance_to(fish.position) <= self.comfort_radius:
			count += 1
			avoid_vector += (self.position - fish.position)

	var count_modifier = (count + school.size())/school.size() * count_strength
	avoid_vector = avoid_vector.normalized() * count_modifier * avoid_ovelap_strength

	return avoid_vector

func avoid_collisions_logic():
	var avoid_vector = Vector2()
	var count = 0
	
	for fish in school:
		if fish != self:
			if self.position.distance_to(fish.position) <= self.comfort_radius * 1.5:
				var fish_angle = rad2deg((self.position - fish.position).normalized().angle())
				if abs(self.rotation-fish_angle) < (view_angle/2.0):
					avoid_vector += (self.position - fish.position)
	
	return avoid_vector

func alignment_logic(neighbors):
	var alignment_vector = Vector2()
	if neighbors.empty():
		return alignment_vector
		
	for fish in neighbors:
		alignment_vector += fish.velocity
	
	var count_modifier = (neighbors.size() + school.size())/school.size() * count_strength
	alignment_vector = alignment_vector.normalized() * count_modifier * alignment_strength
	
	return alignment_vector

func cohesion_logic(neighbors):
	var cohesion_vector = Vector2()
	if neighbors.empty():
		return cohesion_vector
	for fish in neighbors:
		cohesion_vector += fish.position
	
	var count_modifier = (neighbors.size() + school.size())/school.size() * count_strength
	cohesion_vector = cohesion_vector.normalized() * count_modifier * cohesion_strength
	
	return cohesion_vector

func _process(delta):
	var neighbors = get_fish_in_vision()
	
	var accelleration = Vector2()
	
	accelleration += avoid_overlap_logic()
	accelleration += alignment_logic(neighbors)
	accelleration += cohesion_logic(neighbors)
	accelleration += avoid_other_fish_logic()
	accelleration += avoid_collisions_logic()

	if borders:
		accelleration += avoid_borders()

	velocity += accelleration
	velocity = velocity.clamped(max_speed)
	
	self.rotation = velocity.angle()
	translate(velocity * delta)
	
	wrap_screen()
