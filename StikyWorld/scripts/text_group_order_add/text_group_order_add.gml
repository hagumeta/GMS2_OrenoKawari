///@desc テキストグループ(順次表示型)にelementを予約する

///@arg group_id
///@arg elem_list

var _order_group, _elem_list, _length;
_order_group = argument0;
_elem_list = argument1;

_length = ds_list_size(_elem_list);


var _inst_id, _elem;
//キューに入れる
for(var i=0; i<_length; i++){
	_elem = _elem_list[| i];
	ds_queue_enqueue(_order_group.reserved_letter, _elem);
	_inst_id = _elem[? "id"];
	instance_deactivate_object(_inst_id);
}