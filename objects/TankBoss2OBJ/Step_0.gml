// Inherit the parent event
if (instance_exists(ShieldOBJ)){
shield.x = x;
shield.y = y;
}
event_inherited();

if(alarm[1] <= 0 && !instance_exists(BitsOBJ)){
		alarm_set(1,120)
}