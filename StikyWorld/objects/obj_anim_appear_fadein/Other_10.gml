/// @desc <オーバーライド> フェードインさせる

var t = room_speed/2;
if(anim_time < t)
{
	inst.image_alpha = anim_time/t;	
}
else
{
	inst.image_alpha = 1;
	instance_destroy();
}