/// @desc 表示文字を一文字ずつ追加


var txt = text_list[text_list_index];

//テキスト範囲内かのチェック
if(++string_index <= string_length(txt)){
	/*テキスト範囲内 : テキスト表示させ中*/
	
	//文字を読み込む
	var addChar = string_char_at(txt, string_index);
	
	//改行文字(\n)かどうかを確認し，改行文字なら纏めて読み込む
	/*
	if(addChar == "\\"){
	}*/
	
	//文字列を追加する
	print += addChar;
	
	
	//次の一文字表示を少し待つ
	alarm[0] = 2;
}
else
{
	/*テキスト範囲外 : テキスト表示終了*/
	event_user(1);
}