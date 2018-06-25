if(flag){
	if(y != yy){
		y -= d;
	}else{
		flag = false;
		alarm[0] = 30;
	}
}
if(y >= 1000){
	instance_destroy();
}