//pause the game
if (keyboard_check_pressed(vk_escape)){
    global.gamepaused = !global.gamepaused;
    if (global.gamepaused) {
        show_debug_message("game_paused_image_speed exists in " + string(id));
        with (all) {
            game_paused_image_speed = image_speed
            image_speed = 0;
        }
    } else {
        with(all) {
            image_speed = game_paused_image_speed;
        }
    }
}