var move = 0;

if (keyboard_check(ord("W"))) {
		move = moveSpeed;
}
if (keyboard_check(ord("S"))) {
		move = -moveSpeed;
}

x += lengthdir_x(move, image_angle);
y += lengthdir_y(move, image_angle);

if (keyboard_check(ord("A"))) {
	image_angle += 4;
}
if (keyboard_check(ord("D"))) {
	image_angle -= 4;
}

if(((abs(move) > 0))) {
horizontalWallCheck() 
verticalWallCheck()
horizontalEnemyCheck() 
verticalEnemyCheck()
}

if (mouse_check_button_pressed(mb_left)) {
	if (can_shoot){
		can_shoot = false;
		alarm_set(0, shot_cool_down);
	    rx = x + -lengthdir_x(recoil,PlayerTurretOBJ.image_angle)
		ry = y + -lengthdir_y(recoil,PlayerTurretOBJ.image_angle)
		move_towards_point(rx,ry,recoilSpeed)
		alarm_set(1,recoil)
}
}

if (hp <= 0){
	room_restart();	
}

//Wallcheck
// Horizontal movement
function horizontalWallCheck() {
if (!place_meeting(x + moveSpeed, y, WallOBJ)) {
    return true
} else {
	x = xprevious;
    return false
}}

function verticalWallCheck() {
// Vertical movement
if (!place_meeting(x, y + moveSpeed, WallOBJ)) {
    return true
} else {
	y = yprevious;
    return false
}}

//Wallcheck
// Horizontal movement
function horizontalEnemyCheck() {
if (!place_meeting(x + moveSpeed, y, EnemyOBJ)) {
    return true
} else {
	x = xprevious;
    return false
}}

function verticalEnemyCheck() {
// Vertical movement
if (!place_meeting(x, y + moveSpeed, EnemyOBJ)) {
    return true
} else {
	y = yprevious;
    return false
}}

x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);