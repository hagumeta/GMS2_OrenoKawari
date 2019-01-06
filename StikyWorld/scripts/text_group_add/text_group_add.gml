///@desc テキストグループにelementとしてインスタンスを入れる．
/*
xpos．yposはテキストグループの左上からの相対場所．
*/

///@arg group_id
///@arg xpos
///@arg ypos
///@arg inst_id


var _group_id, _xpos, _ypos, _inst_id, _elem;

_group_id = argument0;
_xpos = argument1;
_ypos = argument2;
_inst_id = argument3;

_elem = _text_group_make_element(_xpos, _ypos, _inst_id);

ds_list_add(_group_id.group, _elem);