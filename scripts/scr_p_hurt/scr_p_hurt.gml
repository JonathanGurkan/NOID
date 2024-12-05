// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_hurt(_direction,_force,_damage){

    function hurt_player(_direction, _force, _damage) {
        if (obj_player.invincible <= 0) {
            global.player_health = max(0, global.player_health - _damage);
    
            if (global.player_health > 0) {
                with (obj_player) {
                    state = scr_p_stun();
                    direction = _direction - 180;
                    move_distance_remaining = -_force;
                    screenshake(2, 10);
                    flash = 0.7;
                    invulnerable = 60;
                    show_debug_message(string("aaaaaaa"));
                }
            } else {
                // Kill the player
            }
        }
    }
    
    
    
}