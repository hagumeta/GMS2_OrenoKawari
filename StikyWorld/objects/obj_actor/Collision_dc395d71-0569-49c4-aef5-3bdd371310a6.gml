/// @desc ブロックとの当たり判定(新)

/// @desc
if(collide_enable)
{//当たり判定が有効なら↓を行う
		
	//更新前の座標に戻す
	x -= hspeed - other.hspeed;
	y -= vspeed - other.vspeed;

		
		
	var fx = round(x + hspeed - other.hspeed),
		fy = round(y + vspeed - other.vspeed),
		hsp = round(hspeed - other.hspeed),
		vsp = round(vspeed - other.vspeed), 
		fx_tmp = fx,
		fy_tmp = fy;
		
	var horizenOut = false,
		verticalOut = false;
		
	//横方向で当たっているならxを押し戻す
	if(place_meeting(fx, y, other.object_index)){
		if(hsp == 0){
			hsp = 1;
		}
		
		var count = 0;
		while(place_meeting(fx, y, other.object_index)){//ブロックに当たらなくなるまで座標を押し戻す
			fx -= sign(hsp);//今の横スピードの逆方向に押し戻す
			count++;
			if(count > abs(round(hspeed - other.hspeed)*1.4)){
				horizenOut = true;
				break;
			}
		}
		hspeed = 0;
		//additional_vsp += other.vspeed;
	}		
	x = fx;//座標の更新


	//縦方向で当たっているならyを押し戻す
	if(place_meeting(x, fy, other.object_index)){
		if(vsp == 0){
			vsp = -1;
		}
		var count = 0;

		while(place_meeting(x, fy, other.object_index)){//ブロックに当たらなくなるまで座標を押し戻す
			fy -= sign(vsp);//今の縦スピードの逆方向に押し戻す
			count++;
			/*
			if(count > abs(round(vspeed - other.vspeed)*2)){

				verticalOut = true;
				break;
			}*/
		}
		vspeed = 0;

		additional_hsp += other.hspeed;
	}
	
	y = fy;//座標を更新
	
	
	if(verticalOut && horizenOut){
		event_user(0);
	}else{
		if(verticalOut){
			self.y = fy_tmp;
		}
		if(horizenOut){
			self.x = fx_tmp;
		}
	}
}
/*
y = floor(y);
other.y = floor(other.y);
x = floor(x);
other.x = floor(other.x);

other.hspeed = floor(other.hspeed);
other.vspeed = floor(other.vspeed);


var xx = floor(-other.hspeed + hspeed);
var yy = floor(-other.vspeed + vspeed);

var otherHsp = floor(other.hspeed);
var otherVsp = floor(other.vspeed);



if (!place_free(x+xx, y)) {

	move_contact_solid(90, step);
	if (xx < 0) {    // left
	    move_contact_solid(180,abs(xx));
	}
	if (xx > 0) {    // right
	    move_contact_solid(0,abs(xx));
	}
	if(stand){
		move_contact_solid(270, step*3/2);
	}else{
		move_contact_solid(270, step);
	}

	if(!place_free(x+sign(hspeed), y-step)){
		if(hspeed != 0){
			collideWall = true;
			image_xscale = sign(hspeed)*(abs(image_xscale));
		}
		
	}
	hspeed = 0;
	xx = 0;
	move_contact_solid_fixed(270, otherVsp);
	otherVsp = 0;
}


if (!place_free(x,y+yy)) {

    if (yy < 0) {    // up
        move_contact_solid(90,abs(yy));
    }
    if (yy > 0) {    // down
        move_contact_solid(270,abs(yy));
    }
	vspeed = 0;
	yy = 0;
	move_contact_solid_fixed(0, otherHsp);
	otherHsp = 0;
}


if(!place_free(x+xx, y+yy)){
	
	move_contact_solid_fixed(0, xx);
	move_contact_solid_fixed(270, yy);
	vspeed = 0;
	hspeed = 0;
	move_contact_solid_fixed(0, other.hspeed);
	move_contact_solid_fixed(270, other.vspeed);
}

x += otherHsp;
y += otherVsp;

//圧死判定
if(!(place_free(x+1, y) || place_free(x-1, y) || place_free(x, y-1) || place_free(x, y+1))){
	var c= 0;
	while(!(place_free(x+1, y) || place_free(x-1, y) || place_free(x, y-1) || place_free(x, y+1))){
		y--;
		c++;
		if(c > step){
			event_user(0);
		}
	}
}