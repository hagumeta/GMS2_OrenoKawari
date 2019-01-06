if(alarm[0] < 0){
	if(place_meeting(x+hspeed, y+vspeed, obj_block_fixed)){
		move_contact_solid(direction, speed);
		hsp = hspeed;
		vsp = vspeed;
		speed = 0;
		alarm[0] = time;
	}
}