var distance_to_p = distance_to_object(obj_player);
if (distance_to_p < 20 && obj_player.key_use) trigger = true; 
if(trigger){
   global.wallclimb = true;
   instance_destroy();
}

    

