///@desc 指定オブジェクトに当たる直前まで座標を足す

///@arg dir
///@arg maxdist_-対応
///@arg object
//x = round(x);
//y = round(y);

if(argument1 == 0){
	return ;
}
x = round(x);
y = round(y);

var dir = argument0;
var maxdist = abs(argument1);
var object = argument2;

var sig = sign(argument1);



for(var dist = 1; dist < maxdist; dist++){
	if(place_meeting(round(x + sig*dcos(dir)), y, object)){
		x = round(x);
		break;
	}else{
		x += sig*dcos(dir);
	}
	if(place_meeting(x, round(y - sig*dsin(dir)), object)){
		y = round(y);
		break;
	}else{
		y -= sig*dsin(dir);		
	}
}
/*
x -= sig*sig_ceil(dcos(dir));
y += sig*sig_ceil(dsin(dir));

return ;