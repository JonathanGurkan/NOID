/// @description Insert description here
if(is_being_carried && instance_exists(obj_player)){
    image_index = 1;
    if (target != noone){
        y = obj_player.y + offset_y;
        x = obj_player.x + offset_x;
        
        
        if (mouse_check_button_pressed(mb_left) && firing_delay <= 0 && !sword_use) { 
            sword_use = true;
            firing_delay = 30;
        }
        
        if (sword_use) {
            firing_delay -= 1;
        }
            
            // Check if the dash duration has ended
            if (firing_delay == 0) {
                sword_use = false;
             
            }
            
        
    }
}
else {image_index =0;}

if(interaction_object != noone) {
        if(collision_circle(x, y, popup_radius, obj_player, false, true) != noone) {
            interaction_object.visible = true;
        } else {
            interaction_object.visible = false;
        }
    }
    
    if(is_being_carried) {
        interaction_object.visible = false;
        interaction_object.x = x;
        interaction_object.y = y - 16;
    }

show_debug_message("sword: " + string(sword_use) +  " delay"+ string(firing_delay));
