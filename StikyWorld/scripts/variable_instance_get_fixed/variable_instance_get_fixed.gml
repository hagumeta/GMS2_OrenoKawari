///@desc 対象idのインスタンス変数を取得する．未定義ならその変数を0で定義した上で返す[初期値はオプションで決められる]

///@arg id
///@arg name
///@arg [option]initVal

var _id, _name, _initVal=0;
_id = argument[0];
_name = argument[1];

//未定義なら定義する
if(!variable_instance_exists(_id, _name)){
	if(argument_count == 3){
		_initVal = argument[2];
	}
	variable_instance_set(_id, _name, _initVal);
}

return variable_instance_get(_id, _name);