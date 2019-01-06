///@arg x
///@arg y
///@arg string

var _str, _x, _y;
_str = argument2;
_x = argument0;
_y = argument1;

//まだ読み込みが終わっていない文字列
var _str_stock;
_str_stock = _str;

var _char, _next_pos;

var __length, __xpos, __ypos, __com, _out_text;
__xpos = 0;
__ypos = 0;
_out_text = "";


var _group, _list, _elem_list;
_elem_list = ds_list_create();


///解析(_str_stockが無くなるまで)
while(_str_stock != "")
{
	/*最近の特殊文字の場所を探してその直前までの通常文字列を抜き出す*/
	_next_pos = (string_pos("\n", _str_stock));
	
	if(_next_pos != 1){//次の文字列が特殊文字でなければ
		if(_next_pos == 0) _next_pos = string_length(_str_stock)+1;
		_out_text = string_copy(_str_stock, 1, _next_pos-1);
		_str_stock = string_delete(_str_stock, 1, _next_pos-1);
	}
	
	if(_out_text != ""){
		//通常テキストをテキストグループに順次追加
		_list = text_parse_letter(_out_text);
		__length = ds_list_size(_list);
		for(var i=0; i<__length; i++){
			//text_group_add(_group, __xpos, __ypos, _list[| i]);
			ds_list_add(_elem_list, _text_group_make_element(__xpos, __ypos, _list[| i]));
			__xpos++;
		}
	}
	
	//最初の1文字を読む
	_char = string_copy(_str_stock, 1, 1);
	
	if(_char == "\n"){//改行
		__ypos++;//一段落下げる
		__xpos=0;
		_str_stock = string_delete(_str_stock, 1, 1);
	}
		/*
		case "["://コマンド
			tmp = string_pos(_str_stock, "[");
			__com = string_copy(_str_stock, tmp+1, tmp-string_pos(_str_stock, "]")-1);
			
			
			break;
		*/
}


_group = text_group_create(_x, _y);
_group.group = _elem_list;

return _group;