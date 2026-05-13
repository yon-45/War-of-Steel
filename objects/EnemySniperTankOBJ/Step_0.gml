lilBuddy.x = x + lengthdir_x(x0, image_angle);
lilBuddy.y = y + lengthdir_y(x0, image_angle);
if (hp <= 0){
instance_destroy(lilBuddy);	
}
event_inherited()

if (state == ObjectStates.stunned){ 	
	move = 0;
} else if  (state == ObjectStates.follow) {
	move = 4;
	move_range -= 1;
		state = ObjectStates.follow;
		x += lengthdir_x(move, image_angle);
		y += lengthdir_y(move, image_angle);

//this part makes the enemy stop moving and go into the aiming state
	if (move_range == 0){
		event_user(0);
	}
	
} else if (state == ObjectStates.aiming){
	move = 0;
}




x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);
