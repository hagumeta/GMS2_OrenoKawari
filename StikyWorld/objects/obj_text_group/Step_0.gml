var _length, _ds_map, _inst_id, _xpos, _ypos;
_length = ds_list_size(group);



for(var i=0; i<_length; i++){
	_ds_map = group[| i];
	
	
	
	_inst_id = _ds_map[? "id"];
	_xpos = _ds_map[? "xpos"] * space_width;
	_ypos = _ds_map[? "ypos"] * space_height;
	
	
	//show_debug_message(_inst_id.letter + " : " +string(self.y));
	
	
	if(instance_exists(_inst_id)){
		if(_inst_id.bind){
			_inst_id.x = self.x + _xpos*dcos(image_angle) - _ypos*dsin(image_angle);
			_inst_id.y = self.y + _xpos*dsin(image_angle) + _ypos*dcos(image_angle);
			_inst_id.image_angle = 360-self.image_angle;
			
			//show_debug_message(_inst_id.letter + " : " + string(_inst_id.x))
		}
	}
}