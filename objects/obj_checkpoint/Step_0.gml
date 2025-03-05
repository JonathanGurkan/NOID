distance_to_p = distance_to_object(obj_player);
if (distance_to_p < 50 && obj_player.key_use) trigger = true;
    
if(trigger){
global.checkpoint = room;
}

if(global.checkpoint != room) trigger = false;