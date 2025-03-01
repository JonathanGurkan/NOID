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
    if(keyboard_check(ord("J"))){
	audio_play_sound(EhE_okE,0,0);
	}
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
    if keyboard_check(ord("Y")) {
        room = r_test;
    }
    if(instance_exists(obj_player)){
        if keyboard_check(ord("X")){
            obj_player.collision_map = 1
        } else {
            obj_player.collision_map = obj_collision;
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
	if(keyboard_check(ord("C"))){
		global.wallclimb = true;
	}
}

if (global.gamepaused && !global.player_is_alive) {
	global.gamepaused = false;	
}
