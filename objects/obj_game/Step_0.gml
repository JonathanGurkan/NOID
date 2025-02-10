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
	if(keyboard_check(ord("L"))){
	global.player_health = 1;
	}
	if (keyboard_check(ord("R"))) {
    room_restart();
	}
	if (keyboard_check_pressed(ord("H"))) {
	    screenshake(3, 60,0.5);
	}
    if keyboard_check(ord("1")) {
    room = r_tutorial_1; 
    }
    if keyboard_check(ord("2")) { 
    room = r_tutorial_2;
    } 
    if keyboard_check(ord("3")) { 
    room = r_tutorial_3;
    }
    if keyboard_check(ord("0")) {
    room = r_main_menu;
    }
    if(instance_exists(obj_player)){
        if keyboard_check(ord("X")){
            obj_player.collision_map = layer_tilemap_get_id(layer_get_id("")) 
        } else {
            obj_player.collision_map = layer_tilemap_get_id(layer_get_id("col"))
        }
    }
    if keyboard_check(ord("4")) room = r_end;
    if (keyboard_check(ord("T"))){
        game_restart();
    }
    if(keyboard_check(ord("K"))){
        with(par_enemy){
            instance_destroy();
        }
    }

}