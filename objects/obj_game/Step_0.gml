

//fullscreen
if(keyboard_check(vk_f11)){
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
}

//room toggle
if(keyboard_check(vk_f12)){
    room_toggle = true;
}
if(room_toggle = true){
    if keyboard_check(ord("1")) room = r_tutorial_1;
    if keyboard_check(ord("2")) room = r_tutorial_2;
    if keyboard_check(ord("3")) room = r_tutorial_3;
    if keyboard_check(ord("4")) room = r_end;
        
    if keyboard_check(vk_enter){
        room = r_main_menu;
    }
    
    if (keyboard_check(ord("T"))){
        game_restart();
    }
    
    if(keyboard_check(ord("K"))){
        with(par_enemy){
            instance_destroy();
        }
    }
}