/// @desc <オーバーライド> ポンと出てくるようなアニメーションをする

//obj_anim_poyoの分
event_inherited();

var _exp;

_exp = exp(-anim_time);
if(_exp < 0.001){
	inst.image_xscale = anim_scale;
	inst.image_yscale = anim_scale;
	instance_destroy(self);
}
else
{
	anim_amplitude = _exp;
	anim_scale = 1-_exp;
}