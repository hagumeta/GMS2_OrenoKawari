///@desc 登場用フェードインスクリプト

/*
返り値
true :アニメーション終了時
false:アニメーション未完時
*/


var _time;
_time = variable_instance_get_fixed(self.id, "anim_time", 0);

if(_time < 50){
	self.image_alpha = _time/50;
	self.anim_time++;
	return false;
}else{
	self.image_alpha = 1;
	return true;
}
