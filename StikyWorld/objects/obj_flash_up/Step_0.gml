if(!flag){
	if(image_alpha >= 1){
		flag = true;
		alarm[0] = 30;
	}else{
		image_alpha += 0.1;
	}
}
if(flag2){
	if(image_alpha < 0){
		instance_destroy();
	}else{
		image_alpha -= 0.2;
	}
}