if (global.gamepaused) {
    var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("w"))
    var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
    
    pause_option_selected += (key_down - key_up)
    if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
    if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) -1;
        
    var key_activate = keyboard_check_pressed(vk_enter);
    if(key_activate) {
        switch (pause_option_selected) {
            case 0: {
                global.gamepaused = false;
            } break;
            
            case 1: {
                room_goto(r_main_menu);
            } break;
            
            case  2: {
                game_end();
            }
        }
    }
}
