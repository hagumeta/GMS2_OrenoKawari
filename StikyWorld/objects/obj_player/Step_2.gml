if(frozen){
	exit;
}
//image manager

if(stand){
	if(hspeed != 0){
		image_xscale = sign(hspeed);
		sprite_index  = sprite_run;
	}else{
		sprite_index = sprite_stand;
	}
}else{
	if(wall_catch){
		sprite_index = sprite_wall;
	}else{
		sprite_index = sprite_jump;
	}
}


if(y > room_height){
	x = xstart;
	y = ystart;
	death++;
}
//圧死判定
if(!place_free(x, y+1) && !place_free(x, y-1) && !place_free(x-1, y) && !place_free(x+1, y) && !place_free(x, y)){
	player_kill();
}