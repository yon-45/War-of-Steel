function knockback() {
		rx = x - lengthdir_x(10, DashOBJ.image_angle);
		ry = y - lengthdir_y(10, DashOBJ.image_angle);
		move_towards_point(rx,ry,17);
}

if (dashCoolDown > 0){
	dashCoolDown -= 1;	
}

if (hp <= 0){
	ControllerOBJ.enemy_count -=1;
	instance_destroy();	
}
