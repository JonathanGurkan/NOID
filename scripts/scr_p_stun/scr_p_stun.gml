// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_stun(){
    scr_p_animation();
        collision();
 image_xscale = -sign(knockback_speed)
    move_x = lengthdir_x(knockback_speed, direction-180)
    var _knockback_fric = 0.3;
    knockback_speed =  lerp(knockback_speed, 0, 1)
    if (knockback_speed = 0) {
        
        state = PLAYERSTATE.FREE;
    }
    
    
}