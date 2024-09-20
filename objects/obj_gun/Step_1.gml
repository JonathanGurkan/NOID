/// @description Insert description here

x = obj_player.x + 10;
y = obj_player.y + 5;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firing_delay = firing_delay - 1;
if (mouse_check_button(mb_left)) && (firing_delay < 0){
    
    firing_delay = 15;
    with (instance_create_layer(x,y,"Bullets", obj_bullet)){
        
        speed = 25;
        direction = other.image_angle + random_range(4, -4);
        image_angle = direction;
    }
}
    var angle = point_direction(x, y, mouse_x, mouse_y);

// Constrain the angle between -90 and 90 degrees
if (angle > 90 && angle < 270) {
    // Flip the sprite horizontally (aiming backwards)
    image_xscale = -1;
    image_angle = angle - 180;  // Adjust the angle for the flipped orientation
} else {
    // Normal orientation (aiming forwards)
    image_xscale = 1;
    image_angle = angle;
}
