/// @desc テキスト表示スタート

//テキストが範囲内なことを取得しておく
if(text_list_index < array_length_1d(text_list)){
	//表示用のテキストの中身を空にする
	print = "";
	//一文字目からにリセットする
	string_index = 0;

	//待ちフラグをfalseにする
	stay = false;

	//テキストを一文字目から順番に表示させる
	alarm[0] = 1;
}
else
{
	//範囲外なら終了イベントを起こす
	event_user(2);
}