if keyboard_check(vk_enter){
    room = r_main_menu;
}
if (keyboard_check(ord("T"))){
    game_restart();
}
if(keyboard_check(vk_f11)){
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
	
}