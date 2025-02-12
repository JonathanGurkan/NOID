if (flash_trigger && !flash_active) {
    flash_active = true;  // Start the flash
    flash_time = 0;       // Reset time for a fresh flash
}

if (flash_active) {
    flash_time += flash_rate;  // Increment time

    if (flash_time >= flash_max) {
        flash_active = false; // Stop the flash
        flash_trigger = false; // Reset the trigger
        flash_alpha = 0;  // Ensure it fully disappears
    } else {
        flash_alpha = (1 + cos(flash_time)) / 2; // Smooth fade effect
        draw_sprite_stretched_ext(spr_pixel, 0, 0, 0, display_get_gui_width(), display_get_gui_height(), c_white, flash_alpha * flash_alpha_max);
    }
}