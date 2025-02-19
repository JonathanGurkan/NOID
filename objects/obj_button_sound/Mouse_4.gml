/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
global.sound_on = !global.sound_on
event_inherited();
audio_play_sound(snd_menu_fw,0,0);

if (global.sound_on) {
    audio_master_gain(1);
	button_text = "ON";
} else {
    audio_master_gain(0);
	button_text = "OFF";
}
