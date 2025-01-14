// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_transition(in_type, in_target) {
    move_x = move_x
    if (!instance_exists(obj_transition)) {  
        with(instance_create_depth(0,0,-9999,obj_transition)) {
            type = in_type;
            target = in_target;
        }
    } 
}