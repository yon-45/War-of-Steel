var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var dx = mx - x;
var dy = my - y;

x = PlayerTankOBJ.x + lengthdir_x(x0, PlayerTankOBJ.image_angle);
y = PlayerTankOBJ.y + lengthdir_y(x0, PlayerTankOBJ.image_angle);


image_angle = point_direction(x, y, mx, my);

if (mouse_check_button_pressed(mb_left)) {
	if (can_shoot){
		can_shoot = false;
		alarm_set(0, shot_cool_down);
	    var _b = instance_create_layer(x, y, "Bullets", ShellOBJ);
	    _b.direction = image_angle;
	    _b.speed = 15;
		var _d = instance_create_layer(x,y, "Bullets", DashOBJ);
		_d.direction = -image_angle;
		audio_play_sound(choose(BoomSFX,BangSFX,BoomSFX),1,0,0.5,0)
	}
}