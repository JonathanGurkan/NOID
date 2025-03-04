if (timer <= 0) {
	room_goto(r_credits);
	audio_play_sound(snd_menu_fw,0,0)
	timer = 60
}