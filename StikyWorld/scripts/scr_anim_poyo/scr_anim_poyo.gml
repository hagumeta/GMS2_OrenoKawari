///@desc アニメーションスクリプト ぽよぽよする

var _angle, _scale, _amp, _time, _speed;

//アニメーション専用の位相角を取得
_time = anim_get_time();
_speed = anim_get_speed();
_amp = anim_get_amplitude();
_scale = anim_get_scale();

_angle = _time+_speed;

image_xscale = _scale + _scale*dsin(_angle);
image_yscale = _scale + _scale*dsin(_angle);

self.anim_time++;