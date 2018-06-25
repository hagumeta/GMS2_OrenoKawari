//(x, y, speed);
var fx = argument0;
var fy = argument1;
if(x == fx && y == fy){
	speed = 0;
	return true;
}
var spd= argument2;

var dis	  = val_distance_position(fx, fy);

if(dis < 1){
	x = fx;
	y = fy;
	speed = 0;
	return true;
}
direction = val_direction_position(fx, fy);

if(dis < spd){
	speed = dis;
}else{
	speed = spd;
}

return false;