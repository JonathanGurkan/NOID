if (global.gamepaused) {
    var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    
    pause_option_selected += (key_down - key_up)
    if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
    if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) -1;

     var key_activate = keyboard_check_pressed(vk_enter);
     if(key_activate) {
 		if (pause_option == pause_menu_main) {
 	        switch (pause_option_selected) {
 	            case 0: { //Continue
 	                global.gamepaused = false;
 	            } break;		
 				case 1: { //Options
 					pause_option = pause_menu_options;
 					pause_option_selected = 0;
 				} break;
 				case 2: { //Restart Level
 					global.gamepaused = false;
 					room_restart()
 				} break;
 	            case 3: { //Main Menu
 					room_goto(r_main_menu);
 					global.gamepaused = false;
 				} break;
 	            case 4: { //Quit
 	                game_end();
 	            } break;

 	        }
 		} else if (pause_option == pause_menu_options) {
 			switch (pause_option_selected) {
 	            case 0: { //Toggle Sound
 	               audio_play_sound(snd_menu_fw,0,0);
 					global.sound_on = !global.sound_on
 					if (global.sound_on) {
 						audio_master_gain(1);
 					} else {
 						audio_master_gain(0);
 					}
 	            } break;		
 				case 1: { //Toggle Fullscreen
 					if (window_get_fullscreen()) {
 						window_set_fullscreen(false)
 					} else {
 						window_set_fullscreen(true)
 					}
 				} break; 
 				case 2: { //Show Controls
 					//Write new code that draws the controls in the GUI HUD
 				} break;
 	            case 3: { //Back
 					pause_option = pause_menu_main;
 					pause_option_selected = 0;
 				} break;

 	        }
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
                room_transition(TRANS_TYPE.FADE, global.checkpoint)
            } break;
            case 1: {
                room_goto(r_main_menu);
                state = PLAYERSTATE.FREE;
                global.player_is_alive = true;
                global.player_health = global.player_max_health;
                global.player_stamina = global.player_max_stamina;
				global.player_score = 0;
            } break;
            case 2: {
                game_end();
            } break;
        }
    }
}