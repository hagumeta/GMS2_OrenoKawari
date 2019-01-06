/// @desc ブロックとの当たり判定(新)

/// @desc
if(collide_enable)
{//当たり判定が有効なら↓を行う
		
	//更新前の座標に戻す
	x -= hspeed - other.hspeed;
	y -= vspeed - other.vspeed;

		
		
	var fx = (x + hspeed - other.hspeed),
		fy = (y + vspeed - other.vspeed),
		hsp = (hspeed - other.hspeed),
		vsp = (vspeed - other.vspeed), 
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
			if(count > abs(round(hspeed - other.hspeed))){
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
			fy -= sign((vsp));//今の縦スピードの逆方向に押し戻す
			count++;
			/*if(count > abs(round(vspeed - other.vspeed))){
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
//過去の座標を取得
var preX = self.x - self.hspeed + other.hspeed;
var preY = self.y - self.vspeed + other.vspeed;
var otherObjIndex = other.object_index;


var otherHsp = other.hspeed,
	otherVsp = other.vspeed;


///横方向での衝突
if(place_meeting(self.x, preY, otherObjIndex)){
	move_contact_object(90, step, otherObjIndex);
	
	self.x = preX;
	move_contact_object(0, self.hspeed, otherObjIndex);
	
	if(stand){
		move_contact_object(270, step*3/2, otherObjIndex);
	}else{
		move_contact_object(270, step, otherObjIndex);
	}
	
	self.hspeed = 0;
	
	move_contact_object(270, otherVsp, otherObjIndex);
	otherVsp = 0;
}

///縦方向での衝突
if(place_meeting(preX, self.y, otherObjIndex)){
	self.y = preY;
	move_contact_object(270, self.vspeed, otherObjIndex);
	
	self.vspeed = 0;
	
	move_contact_object(0, otherHsp, otherObjIndex);
	otherHsp = 0;
}



if(place_meeting(self.x, self.y, otherObjIndex)){
	if(vspeed != 0){
		self.y = preY;
		move_contact_object(270, self.vspeed, otherObjIndex);
	}
	if(hspeed != 0){
		self.x = preX;
		move_contact_object(0, self.hspeed, otherObjIndex);
	}
}

self.x += otherHsp;
self.y += otherVsp;
/*
if(place_meeting(self.x+1, self.y, otherObjIndex) && place_meeting(self.x-1, self.y, otherObjIndex)){
	var i=0;
	while(place_meeting(self.x, self.y, otherObjIndex)){
		self.y --;
		if(++i > 10){
			event_user(0);
			return;
		}
	}
	
}