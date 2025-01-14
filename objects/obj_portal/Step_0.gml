var enemy_count = instance_number(par_enemy);
show_debug_message(enemy_count);

if(room = r_tutorial_3){
    if (enemy_count <= 1 && place_meeting(x,y,obj_player)){
        x = obj_portal.x
        y = obj_portal.y
        scr_p_teleport();
    }
    
    
}
