///@desc テキストグループにelementとしてインスタンスを入れる．
/*
xpos．yposはテキストグループの左上からの相対場所．
*/

///@arg group_id
///@arg xpos
///@arg ypos
///@arg inst_id


var _group_id, _elem;

_group_id = argument0;
_elem = argument1;


ds_list_add(_group_id.group, _elem);