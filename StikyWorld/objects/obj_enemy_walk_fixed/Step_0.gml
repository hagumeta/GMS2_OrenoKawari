/// @desc
if(alarm[0] < 0 && place_meeting(x+hspeed, y, obj_block))
{
	alarm[0] = 20;
	move_contact_object(0, hspeed, obj_block);
	hspeed = 0;
}