global.target_room = r_tutorial_1; 
global.target_x = 160;
global.target_y = 32;
global.target_direction = 1;
with (obj_player) state = scr_p_transition;
room_transition(TRANS_TYPE.FADE, r_tutorial_1);
audio_play_sound(snd_menu_start,0,0);