alarm[1] = 1;
if audio_exists(sound){
	audio_stop_sound(sound);
	audio_play_sound(sound, 0, false);
}
