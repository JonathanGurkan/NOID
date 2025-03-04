/// @description Insert description here
// You can write your code in this editor

if (timer <= 0) {
	audio_play_sound(snd_menu_fw,0,0)
	room_goto(r_settings);
	timer = 60
}