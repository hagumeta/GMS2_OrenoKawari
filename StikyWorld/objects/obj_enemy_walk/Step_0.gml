/// @desc
if(alarm[0] < 0 && !place_free(x+hspeed, y))
{
	alarm[0] = 20;
	move_contact_solid_fixed(0, hspeed);
	hspeed = 0;
}