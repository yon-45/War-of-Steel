var dir = point_direction(x, y, PlayerTurretOBJ.x, PlayerTurretOBJ.y);

image_angle = dir;

if (alarm[1] <= 0) {
		if (alarm[2] <=0 && shots > 0){
		shoot();
	}
}

if (shots == 0){
	alarm[1] = 60;
	shots = 3;
}

function shoot(){
	var _b = instance_create_layer(x, y, "Bullets", MGBulletOBJ);
	_b.direction = image_angle;
	_b.image_angle = image_angle;
	_b.speed = 4;	
	shots -= 1;
	alarm[2] = room_speed * 0.2;
}