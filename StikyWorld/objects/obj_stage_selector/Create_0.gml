for(var i=0; i<3; i++){
	for(var j=0; j<10; j++){
		var num = i*10+j+1;
		stage[num] = instance_create_depth(64+96*j, 96+i*96, depth-1, obj_stage_cell);
		stage[num].stage_num = num;
	}
}
stage_num = array_length_1d(stage)-1;
cursor = global.now_stage;
lock = false;