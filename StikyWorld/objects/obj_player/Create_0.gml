event_inherited();

gravity = 2;
jump_speed = 20;
run_speed = 6;

lock = false;

count = 0;

frozen = false;

wall_catch = false;

sprite_stand = spr_stiky_stand;
sprite_run = spr_stiky_run;
sprite_jump = spr_stiky_jump;
sprite_wall = spr_stiky_wall;

step = 3;

muteki = true;
image_alpha = 0.5;

alarm[1] = 30;



//global.now_stage = 1;
for(var i=0; i<20; i++){
	global.trigger[i] = false;
}