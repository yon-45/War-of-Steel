event_inherited()
// In Enemy Step Event


if (state == ObjectStates.stunned){ 	
	move = 0;
} else if  (state == ObjectStates.follow) {
	move = 4;
	
	move_range -= 1
		state = ObjectStates.follow;
		x += lengthdir_x(move, image_angle);
		y += lengthdir_y(move, image_angle);
	//this part makes the enemy stop moving and go into the aiming state
	if (move_range == 0){
		event_user(0);
	}
} else if (state == ObjectStates.aiming){
	move = 0;
	var dir = point_direction(x, y, PlayerTankOBJ.x, PlayerTankOBJ.y)
	image_angle = dir;
	if (alarm[1] <= 0) {
		if (alarm[4] <=0 && shots > 0){
		shoot();
        }
	if (shots == 0){
		alarm[1] = 60;
		shots = 3;
	}
}
}

function shoot(){
	var _b = instance_create_layer(x, y, "Bullets", MGBulletOBJ);
	_b.direction = image_angle;
	_b.image_angle = image_angle;
	_b.speed = 4;	
	shots -= 1;
	alarm[4] = room_speed * 0.2;
}


x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);