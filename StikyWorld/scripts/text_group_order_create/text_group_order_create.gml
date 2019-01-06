///@desc 指定座標に空のテキストグループを生成する

///@arg x
///@arg y

var _x = argument0;
var _y = argument1;

var _group = instance_create_depth(_x, _y, depth, obj_text_group_order);
return _group;