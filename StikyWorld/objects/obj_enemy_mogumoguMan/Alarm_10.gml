/// @desc 食べた　少し巨大化


image_xscale *= 1.1;
image_yscale *= 1.1;

y -= sprite_height*1/20;


while(!place_free(x, y)){
	y--;
}



alarm[3] = 10;