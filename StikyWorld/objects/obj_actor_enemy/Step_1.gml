/// @desc


if(!place_free(x, y+step)){
	if(!stand && vspeed > 0){
		script_execute(scr_effect_landing);
	}
	stand = true;
	gravity = 0;
}else{
	stand = false;
	gravity = 1;
}

wall_meeting = collideWall;
collideWall = false;