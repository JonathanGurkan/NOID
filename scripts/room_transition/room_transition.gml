// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_transition(){
show_debug_message("trans")
    move_x = move_x
    if(!instance_exists(obj_transition)){
        
        with(instance_create_depth(0,0,-9999,obj_transition)){
            
            type = argument[0];
            target = argument[1];

            
        }
        
    }
    
    
}