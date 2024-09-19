/// @description Insert description here

x = obj_player.x + 10;
y = obj_player.y + 25;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firing_delay = firing_delay - 1;
if (mouse_check_button(mb_left)) && (firing_delay < 0){
    
    firing_delay = 5;
    with (instance_create_layer(x,y,"Bullets", obj_bullet)){
        
        speed = 25;
        direction = other.image_angle;
        image_angle = direction;
    }
}