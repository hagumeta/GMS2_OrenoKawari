if(frozen){
	exit;
}
//image manager

if(stand){
	if(hspeed != 0){
		image_xscale = sign(hspeed);
		sprite_index  = sprite_run;
		effect_walk_execute();
	}else{
		sprite_index = sprite_stand;
	}
}else{
	if(wall_catch){
		sprite_index = sprite_wall;
		effect_walk_execute();
	}else{
		sprite_index = sprite_jump;
	}
}

/*
//圧死判定
if(!place_free(x, y+1) && !place_free(x, y-1) && !place_free(x-1, y) && !place_free(x+1, y) && !place_free(x, y)){
	player_kill();
}*/
