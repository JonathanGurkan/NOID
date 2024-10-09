/// @description Update gun position and handle firing

// Check if the player still exists
if (instance_exists(obj_player)) {
    // Set the gun's position relative to the player
    y = obj_player.y + 15;
    x = obj_player.x + 10;
    
    // Update the gun's angle based on mouse position
    image_angle = point_direction(x, y, mouse_x, mouse_y);
    
    // Firing logic
    firing_delay = firing_delay - 1;
    if (mouse_check_button(mb_left) && firing_delay < 0) {
        firing_delay = 5;
        with (instance_create_layer(x, y, "Bullets", obj_bullet)) {
            speed = 25;
            direction = other.image_angle + random_range(4, -4);
            image_angle = direction;
        }
    }
    
    // Handle gun's angle and orientation
    var angle = point_direction(x, y, mouse_x, mouse_y);
    
    // Constrain the angle between -90 and 90 degrees
    if (angle > 90 && angle < 270) {
        image_xscale = -1;
        image_angle = angle - 180;  // Adjust the angle for the flipped orientation
    } else {
        image_xscale = 1;
        image_angle = angle;
    }
    
    // Set gun firing animation
    if (mouse_check_button(mb_left)) {
        image_index = spr_gun_animation;
        image_speed = 1;
    } else {
        image_index = spr_gun_base;
    }
} else {
    // If the player doesn't exist, the gun should stop doing anything
    firing_delay = -1;  // Prevent firing when the player is dead
}

