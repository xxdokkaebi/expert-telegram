/// @desc Chase player.

if(instance_exists(obj_Player)) {
	if(point_distance(x, y, obj_Player.x, obj_Player.y) < 800) {	// player in range
		var new_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
		new_angle = image_angle - angle_difference(image_angle, new_angle);
		image_angle = lerp(image_angle, new_angle+90, 0.1);		// lerp (transition) to face player
		direction = image_angle-90;								// hot pursuit
	
		speed += 0.007;	// accelerate
	}
}