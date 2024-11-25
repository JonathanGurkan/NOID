// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
    //x-collision
    if (place_meeting(x+move_x,y,obj_platform_tile)){
        
        while (!place_meeting(x+sign(move_x),y,obj_platform_tile)){
        
            x += sign(move_x);
        
        }
        move_x = 0;
    
    }
    
    x += move_x;
    
    
    
    // y-collision
    if (place_meeting(x,y+move_y,obj_platform_tile)) {
        
        while (!place_meeting(x,y+sign(move_y),obj_platform_tile)){
            
            y += sign(move_y);
        
        }
        move_y = 0;
        
    }
    
    y += move_y;
}