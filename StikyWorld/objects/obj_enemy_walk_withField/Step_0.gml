/// @desc
if(!turn_flag)
{	
	if(wall_meeting && stand){
		turn_flag = true;
		alarm[0] = 20;
	}
}

field.hspeed = hspeed;
field.y = y-sprite_height/2;
field.image_xscale = abs(image_xscale)*2.5;