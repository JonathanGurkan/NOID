// Toggle visibility with F1
if (keyboard_check_pressed(vk_f1)) {
    show_game_info = !show_game_info;
}

// Allow scrolling if the game info is visible
if (show_game_info) {
	
    if (keyboard_check(vk_down)) {
        scroll_y += scroll_speed;
    }
    if (keyboard_check(vk_up)) {
        scroll_y -= scroll_speed;
    }

    // Clamp scrolling so it doesn't go out of bounds
    scroll_y = clamp(scroll_y, 0, max_scroll);
}
