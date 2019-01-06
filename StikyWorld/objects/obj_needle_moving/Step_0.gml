/// @desc

if(!place_free(x+hspeed, y+vspeed)){
	hspeed *= -1;
	vspeed *= -1;
	y += vspeed;
	x += hspeed;
}

