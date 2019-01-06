/// @desc


if(!place_free(x, y+step)){
	if(!stand && vspeed > 0){
		script_execute(scr_effect_landing);
	}
	stand = true;
}else{
	stand = false;	
}

wall_meeting = collideWall;
collideWall = false;