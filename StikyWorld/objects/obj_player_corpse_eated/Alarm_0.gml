/// @desc

if(count < 20){
	effect_jump_execute();
	x -= image_xscale;
}else{
	instance_create_depth(x, y, -10, obj_player_soul);
	instance_destroy();	
}
count++;
alarm[0] = 1;