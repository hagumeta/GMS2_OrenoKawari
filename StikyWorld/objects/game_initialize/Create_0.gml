global.game_name = "俺の代わりは\n   何人でもいる";
global.now_stage = 1;
for(var i=0; i<20; i++){
	global.trigger[i] = false;
}

global.BGM = -1;
room_goto_next();



global.sound_volume_BGM = 1;
global.sound_volume_SE = 0.8;

global.sound_volume_MASTER = 0;

global.stage_death = 0;