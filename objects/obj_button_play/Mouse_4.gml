global.target_room = r_tutorial_1; 
global.target_x = 32;
global.target_y = 160;
global.target_direction = 1;
global.player_health = global.player_max_health;
global.player_stamina = global.player_max_stamina;
if (timer <= 0) {
	with (obj_player) state = scr_p_transition;
	room_transition(TRANS_TYPE.FADE, r_tutorial_1);
	audio_play_sound(snd_menu_start,0,0);
	timer = 60
}