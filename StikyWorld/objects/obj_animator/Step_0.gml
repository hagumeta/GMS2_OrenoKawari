/// @desc アニメーションの更新

if(instance_exists(inst))
{
	event_user(0);
	anim_time += anim_speed;
}
else
{
	show_debug_message("error!! : in" + variable_instance_get_names(self.id) + "\n → isn't setted target instance 'inst' ")
	instance_destroy();	
}