function collision() {
    // --- X-collision ---
    if (place_meeting(x + move_x, y, collision_map)) {
        while (!place_meeting(x + sign(move_x), y, collision_map)) {
            x += sign(move_x);
        }
        move_x = 0;
    }
    x += move_x;

    // --- Y-collision ---
    // First, update the on_ground flag before applying gravity
    on_ground = place_meeting(x, y + 1, collision_map);
    
    // Apply gravity only if not on the ground
    if (!on_ground) {
        move_y += grv;
        move_y = clamp(move_y, -move_y_max, move_y_max);
    }
    
    // Check if the desired vertical movement would cause a collision
    if (place_meeting(x, y + move_y, collision_map)) {
        // Move pixel-by-pixel in the direction of movement
        while (!place_meeting(x, y + sign(move_y), collision_map)) {
            y += sign(move_y);
        }
        // Now the player is exactly flush with the collision surface
        move_y = 0;
    } else {
        y += move_y;
    }
}
