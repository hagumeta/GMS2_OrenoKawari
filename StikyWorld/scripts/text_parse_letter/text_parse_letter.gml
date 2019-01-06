///@desc 文字列を一文字ずつに区切ってobj_text_letterに振り分け，そのインスタンスIDをリストとして返す
///@arg string

var _str, _length, _letter, _inst, _list;

_str = argument0;
_length = string_length(argument0)+1;
_list = ds_list_create();


for(var i=1; i<_length; i++){
	_letter = string_char_at(_str, i);
	_inst = text_letter_create(_letter);
	
	ds_list_add(_list, _inst);
}

return _list;