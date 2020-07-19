shader_type canvas_item;

// Constant Variables
uniform float time_offset = 0.0;
uniform float time_scale = 3.0;
uniform float side_to_side = 2.0;
uniform float pivot = 1.0;
uniform float wave = 5.0;
uniform float black_mask = 1.0;
uniform float white_mask = 0.0;

void vertex() {
	// Dynamic Variables
	float time = (TIME * time_scale) + (6.28318 * time_offset);
	float pivot_angle = cos(time) * 0.1 * pivot;
	mat2 rotation_matrix = mat2(vec2(cos(pivot_angle), -sin(pivot_angle)), vec2(sin(pivot_angle), cos(pivot_angle)));
	float body = (VERTEX.y + 21.0) / 42.0;
	float mask = smoothstep(black_mask, white_mask, 1.0 - body);
	
	// Effects
	VERTEX.x += cos(time) * side_to_side;
	VERTEX.xy = rotation_matrix * VERTEX.xy;
	VERTEX.x += cos(time + body) * wave * mask;
	VERTEX.y -= cos(time*2.0 + body) * wave *.05;
}