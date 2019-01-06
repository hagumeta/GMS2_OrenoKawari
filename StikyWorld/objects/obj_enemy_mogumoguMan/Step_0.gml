/// @desc


if(!action_flag)
{
	var serch_x = sign(hspeed) * serch_distance + x;

	//自分の前に線を引いて，プレイヤーがいるか探索
	var player = collision_line(x, y, serch_x, y, obj_player, false, false);

	if(player != noone)
	{
		//プレイヤーとの距離を測定
		var toPlayerDist = abs(x - player.x);
	
		//同じ線で今度はブロックがいるか探索．いたら距離を測定
		var block = collision_line(x, y, serch_x, y, obj_block, false, false);
		var toBlockDist = 10000;
		if(block != noone){
			toBlockDist = abs(x - block.x);
		}
	
		//ブロックまでの距離よりプレイヤーまでの距離が近いならアクション実行
		if(toPlayerDist < toBlockDist){
			action_flag = true;
			hspeed = 0;
			alarm[1] = 10;
			image_speed = 20;
		}
	}
}

event_inherited();