/// @desc ＜オーバーロード＞サイズをsin風に変える

var _angle;
_angle = anim_time;

inst.image_xscale = anim_scale + anim_amplitude*dsin(_angle);
inst.image_yscale = anim_scale + anim_amplitude*dsin(_angle);