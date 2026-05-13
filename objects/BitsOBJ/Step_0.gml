if(!instance_exists(TankBoss2OBJ)){
	instance_destroy();	
}

var dis = point_distance(x,y,targetx,targety);



if (state == ObjectStates.follow){
	if (dis > 15){
	move_towards_point(targetx,targety,15);
	}
	else{
	speed = 0;
	x = targetx;
	y = targety;
	event_user(0);
	}
}