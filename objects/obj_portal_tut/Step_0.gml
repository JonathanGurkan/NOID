var enemy_count = instance_number(par_enemy);
var distance_to_p = distance_to_object(obj_player);

if (distance_to_p < 50){
    
    if (enemy_count <= 1 && place_meeting(x,y,obj_player)){
       sprite_index = spr_portal_warp;
        if(animation_end()){
            scr_p_teleport()
        }
        
        
        
        with(obj_player){
        if(instance_exists(obj_portal_tut)){
        x = obj_portal_tut.x
        y = obj_portal_tut.y
        }
        visible = false;
        }
        
    }
    
    
}
