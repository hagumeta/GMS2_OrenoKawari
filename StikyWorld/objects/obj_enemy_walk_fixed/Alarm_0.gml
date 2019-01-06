/// @desc 逆方向に動く

image_xscale *= -1;
hspeed = move_speed * image_xscale;
/*while(!place_free(x, y)){
	x += sign(hspeed);
	y-=10;
}*/