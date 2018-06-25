if(x-sprite_width*image_xscale > global.game_width || x+sprite_width*image_xscale < 0 || y+sprite_height*image_yscale < 0 || y-sprite_height*image_yscale > global.game_height){
	return true;
}else{
	return false;
}