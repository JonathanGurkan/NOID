if (global.gamepaused) {
    var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    
    pause_option_selected += (key_down - key_up)
    if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
    if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) -1;
        
    var key_activate = keyboard_check_pressed(vk_enter);
    if(key_activate) {
        switch (pause_option_selected) {
            case 0: { //Continue
                global.gamepaused = false;
            } break;		
			case 1: { //Controls
				room_goto(r_controls)
				global.gamepaused = false;
			} break;
			case 2: { //Toggle Fullscreen
				if window_get_fullscreen() {
					window_set_fullscreen(false);
				} else {
				    window_set_fullscreen(true);
				}
			} break;
            case 3: { //Toggle Sound
				audio_play_sound(snd_menu_fw,0,0);
				global.sound_on = !global.sound_on
				if (global.sound_on) {
					audio_master_gain(1);
				} else {
					audio_master_gain(0);
				}
			} break;
            case 4: { //Main Menu
                room_goto(r_main_menu);
				global.gamepaused = false;
            } break;
            case 5: { //Quit
                game_end();
            } break;
			
        }
    }
}
if (!global.player_is_alive) {
    var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
    var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
    
    death_option_selected += (key_down - key_up)
    if (death_option_selected >= array_length(death_option)) death_option_selected = 0;
    if (death_option_selected < 0) death_option_selected = array_length(death_option) -1;
        
    var key_activate = keyboard_check_pressed(vk_enter);
    if(key_activate) {
        switch (death_option_selected) {
            case 0: {
                state = PLAYERSTATE.FREE;
                global.player_is_alive = true;
                global.player_health = global.player_max_health;
                global.player_stamina = global.player_max_stamina;
                room_transition(TRANS_TYPE.FADE, room)
            } break;
            case 1: {
                room_goto(r_main_menu);
                state = PLAYERSTATE.FREE;
                global.player_is_alive = true;
                global.player_health = global.player_max_health;
                global.player_stamina = global.player_max_stamina;
            } break;
            case 2: {
                game_end();
            } break;
        }
    }
}
