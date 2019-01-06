///@arg x
///@arg y
///@arg string
///@arg speed

var _order, _string, _speed, _x, _y, _inst;

_x = argument0;
_y = argument1;
_string = argument2;
_speed = argument3;

_order = text_group_order_create(_x, _y);
_inst = text_create(0, 0, _string);

text_group_order_add(_order, _inst.group);
instance_destroy(_inst);
_order.display_speed = _speed;

_order.alarm[0] = _speed;

return _order;
