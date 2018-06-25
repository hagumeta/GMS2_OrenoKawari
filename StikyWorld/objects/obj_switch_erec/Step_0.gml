if(place_meeting(x, y, obj_erec)){
	if(!global.trigger[trg]){
		global.trigger[trg] = true;
		image_index = 1;
	}
}else{
	if(global.trigger[trg]){
		global.trigger[trg] = false;
		image_index = 0;
	}
}