if(global.trigger[trg]){
	move_position(move_x, move_y, spd);
	image_blend = c_red;
}else{
	move_position(xstart, ystart, spd2);
	image_blend = c_blue;
}