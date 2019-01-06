/// @desc add letter list  from reserved queue

if(!ds_queue_empty(reserved_letter)){
	var _elem = ds_queue_dequeue(reserved_letter);
	instance_activate_object(_elem[? "id"]);
	ds_list_add(group, _elem);
	
	alarm[0] = display_speed;
	
}