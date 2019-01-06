/// @arg soundID
if(audio_is_playing(global.BGM)){
	audio_stop_sound(global.BGM);		
}

audio_play_sound(argument0, 100, true);
global.BGM = argument0;

audio_sound_gain(global.BGM, VOLUME_BGM, 0.01);