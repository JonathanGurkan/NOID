/// @description Update gun position and handle firing

if(is_being_carried && instance_exists(obj_player)){
    if (target != noone){
    
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
            image_angle = angle - 180;  // Adjust the angle for the flipped orientatio
        } else {
            image_xscale = 1;
            image_angle = angle;
        }
        
    } else {
        firing_delay = -1; 

    }
}
show_debug_message("is being carried: " + string(is_being_carried));
