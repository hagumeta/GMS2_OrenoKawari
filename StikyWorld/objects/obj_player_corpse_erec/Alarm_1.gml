/// @desc 消滅

if(cnt > 10){
	instance_destroy();
}else{
	if(visible){
		visible = false;
	}else{
		visible = true;	
	}
	cnt ++;
	alarm[1] = 5;
}