for(var i=0; i<hblocks; i++){
	for(var j=0; j<vblocks; j++){
		var a = instance_create_depth(x+32*i, y+32*j, depth, obj_trigger_mover_block);
		a.move_x = x;
		a.move_y = y;
	}
}