function scr_p_hurt(_damage) {
    scr_p_animation();
                collision();
        if (invincible <= 0) { // Check if player is invincible
            global.player_health = max(0, global.player_health - _damage); // Reduce health
            show_debug_message(string(global.player_health)); // Debug output

            if (global.player_health > 0) { // If player survives the hit
                state = scr_p_stun(); // Set state to stun
                screenshake(2, 10); // Apply screen shake
                flash = 3; // Set flash effect
                invincible = 30; // Set invincibility frames
            } else {
                // Kill the player logic here
                show_debug_message("Player killed");
            }
        }
    }