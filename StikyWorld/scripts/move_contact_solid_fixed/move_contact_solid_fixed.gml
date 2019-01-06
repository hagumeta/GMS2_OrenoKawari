///@desc move_contact_solidのデフォルト値をなくして-の値を対応させたバージョン
///@arg dir
///@arg maxdist

var dir = argument0;
var maxdist = argument1;


if(maxdist > 0)
{	//最大値が+なら通常通り
	move_contact_solid(dir, maxdist);
}
else
{	
	if(maxdist == 0){
		//最大値が0ならなんもしない
		return ;
	}else{
		//最大値が-なら方向を180°回転させて-を打ち消す
		move_contact_solid(dir+180, -maxdist);	
	}
}