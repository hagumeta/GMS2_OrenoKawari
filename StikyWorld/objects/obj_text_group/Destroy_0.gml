/// @desc グループ内インスタンスを全消去

var _ds_map, _length, _inst_id;
_length = ds_list_size(group);

for(var i=0; i<_length; i++){
	_ds_map = group[| i];	
	_inst_id = _ds_map[? "id"];
	
	instance_destroy(_inst_id);
}