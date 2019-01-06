///@desc obj_text_letterを生成する．
///@arg char

var _letter, _inst;
_letter = argument0;

_inst = instance_create_depth(0, 0, 0, obj_text_letter_plus);
_inst.letter = _letter;

return _inst;