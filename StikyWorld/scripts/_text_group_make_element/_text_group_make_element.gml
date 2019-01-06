///@desc テキストグループに格納する為のelementを作成する．

///@arg xpos
///@arg ypos
///@arg inst_id

var element = ds_map_create();
element[? "xpos"] = argument0;
element[? "ypos"] = argument1;
element[? "id"] = argument2;

return element;