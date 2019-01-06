///@desc ポンと出てくるアニメーションをする
/*
返り値
true :アニメーション終了時
false:アニメーション未完時
*/

scr_anim_poyo();

var _exp;
_exp = exp(-self.anim_time);

if(_exp <= 0.01){
	self.anim_scale = 0;
	self.anim_def_scale = 1;
	return true;
}else{
	self.anim_scale = _exp;
	self.anim_def_scale = 1+_exp;
	return false;
}