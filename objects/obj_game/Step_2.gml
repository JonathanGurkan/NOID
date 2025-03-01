//pause the game
if (keyboard_check_pressed(vk_escape) && room != r_main_menu && global.player_is_alive) {
	with (obj_player) {
		pause_option = pause_menu_main;
		pause_option_selected = 0;
	}
    global.gamepaused = !global.gamepaused;
    audio_stop_all();
    if (global.gamepaused) {
        show_debug_message("game_paused_image_speed exists in " + string(id));
        with (all) {
            game_paused_image_speed = image_speed;
            image_speed = 0;
        }
    } else {
        with(all) {
            image_speed = game_paused_image_speed;
        }
    }
}