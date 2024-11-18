
var key_pickup = keyboard_check_pressed(ord("E"));
var key_attack = mouse_check_button(mb_left);

switch (state){
    case PLAYERSTATE.FREE: player_st_free();  break; 
    case PLAYERSTATE.ATTACK: player_st_attack(); break;
    case PLAYERSTATE.ATTACK_COMBO: player_st_attack_combo(); break;
}



// weapon system
if(key_pickup){
    var pickup_list = ds_list_create();
    var weapons = [obj_weapon, obj_weapon_sword]
    var pickup_count = collision_circle_list(x, y, pickup_radius, weapons, false, true, pickup_list, true);
    
    if(pickup_count > 0){
        
        if(weapon == noone){
            weapon = pickup_list[| 0];
            
            weapon.target = id;
            weapon.is_being_carried = true;
        } else{
            for(var index = 0; index < pickup_count; index ++){
                if(pickup_list[| index] != weapon){
                    weapon.target = noone;
                    weapon.is_being_carried = false;
                    
                    weapon = pickup_list[| index];
                    weapon.target = id;
                    weapon.is_being_carried = true
                    
                    break;
                }
            }
                
        }
    }
    ds_list_destroy(pickup_list);
}


//damage system





//animation




if (key_attack) state = PLAYERSTATE.ATTACK;


//reset room om 0 hp / r pressed
if  (keyboard_check(ord("R"))){
    room_restart();
}

if (hp_current <= 0) {
    instance_destroy()
    instance_destroy(weapon)
}

