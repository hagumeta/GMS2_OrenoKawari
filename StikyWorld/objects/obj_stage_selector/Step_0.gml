if(lock){
	exit;
}
if(keyboard_check_pressed(vk_left)){
	if(cursor > 1){
		if(stage[cursor-1].exist){
			cursor--;
		}
	}
	exit;
}
if(keyboard_check_pressed(vk_right)){
	if(cursor < stage_num){
		if(stage[cursor+1].exist){
			cursor++;
		}
	}
	exit;
}
if(keyboard_check_pressed(vk_up)){
	if(cursor >= 11){
		if(stage[cursor-10].exist){
			cursor -= 10;
		}
	}
	exit;
}
if(keyboard_check_pressed(vk_down)){
	if(cursor <= stage_num-10){
		if(stage[cursor+10].exist){
			cursor += 10;
		}
	}
	exit;
}