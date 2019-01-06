
///@desc プレイヤーをもぐもぐ
global.stage_death ++;

with(obj_player){
	x = xstart;
	y = ystart;
	
	muteki = true;
	image_alpha = 0.5;

	alarm[1] = 30;
	

}

var ob = instance_create_depth(x+image_xscale*8, y-12, depth+1, obj_player_corpse_eated);
ob.image_xscale = image_xscale;