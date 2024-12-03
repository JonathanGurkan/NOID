// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(strngth, lgth){

    with (global.i_camera){
        if (strngth > shake_remain){
            shake_magnitude = strngth;
            shake_remain = shake_magnitude;
            shake_length = lgth;
            
            
        }
        
        
    }
    
    
}