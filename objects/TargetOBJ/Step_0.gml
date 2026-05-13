if (image_xscale > 1.5 && image_yscale > 1.5) {
image_xscale = image_xscale - (maxhp/100);
image_yscale = image_yscale - (maxhp/100);
} else{
	instance_create_layer(x,y,"Bullets",GroundBoomOBJ);
	audio_play_sound(choose(BoomSFX,BangSFX,BoomSFX),1,0,0.5,0)
	instance_destroy();
}