/// @desc

if(sprite_exists(sprite_index)){
	draw_self();
}


draw_sprite(spr_fired, irandom_range(0, 5), x, y);



if(choose(true, false)){
	x = xstart + irandom_range(-1, 1);	
	y = ystart;
}else{
	y = ystart + irandom_range(-1, 1);
	x = xstart;
}