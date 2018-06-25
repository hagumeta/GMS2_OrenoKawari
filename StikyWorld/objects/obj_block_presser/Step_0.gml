if(alarm[0] < 0){
	if(!place_free(x+hspeed, y+vspeed)){
		move_contact_solid(direction, speed);
		hsp = hspeed;
		vsp = vspeed;
		speed = 0;
		alarm[0] = time;
	}
}