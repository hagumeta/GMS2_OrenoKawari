with(obj_player){
	if(place_meeting(x, y, obj_fire)){
		instance_create_depth(x, y, depth, obj_death_fired);
	}
	if(place_meeting(x, y, obj_needle)){
		//instance_create_depth(x-hspeed/4, y-vspeed/4, depth, obj_death_sticked);
		instance_create_depth(x, y, depth, obj_death_sticked);		
	}
	if(place_meeting(x, y, obj_erec)){
		instance_create_depth(x, y, depth, obj_death_erected);
	}
	global.stage_death++;
	
	var erec = instance_place(xstart, ystart, obj_player_corpse_erec);
	instance_destroy(erec);
	x = xstart;
	y = ystart;
	
	
muteki = true;
image_alpha = 0.5;

alarm[1] = 30;
	//event_perform(ev_create, 0);
}