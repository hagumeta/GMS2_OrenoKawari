
wall_catch = (wall_meeting && !stand && vspeed > 0);

if(frozen){
	hspeed = 0;
	vspeed = -gravity;
	exit;
}

if(!BUTTON_ACT){
	if(vspeed < 0){
		vspeed *= 0.80;
	}
}
if(vspeed > 15){
	vspeed = 15;
}

if(lock){
	count = 0;
	exit;
}

//run
var sp = BUTTON_RIGHT - BUTTON_LEFT;
if(wall_catch){
	if(image_xscale == -sp || sp == 0){
		if(count < 4){
			count++;
			sp = image_xscale;
		}else{
			count = 0;
		}
	}
}else{
	count = 0;
}
hspeed = sp*run_speed;

//jump
if(BUTTON_ACT_PRESSED){
	if(stand){
		vspeed = -jump_speed;
	}
	if(wall_catch){
		wall_catch = false;
		vspeed = -jump_speed;
		image_xscale *= -1;
		hspeed = image_xscale*run_speed;
		lock = true;
		alarm[0] = 5;
		effect_jump_execute();
	}
}

if(wall_catch){
	vspeed = 1;
}

event_inherited();

