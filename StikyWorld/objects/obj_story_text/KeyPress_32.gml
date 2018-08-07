/// @desc 次へ進む

//待機状態なら
if(stay){
	//次の表示に進む
	event_user(0);
}
else
{
	//表示中ならスキップ
	event_user(3);	
}