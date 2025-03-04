function be_gone(){
		x = origin_x + radius * cos(degtorad(t));
	y = origin_y - radius * sin(degtorad(t));
	t++;
}

function scr_boss_sword_attack() {
	 boss_attack();
	 
if(!global.bossinit){
	if (direction_p > 90) {
        image_xscale = 1
		warp(349,687);
        } else {
        image_xscale = -1;
		warp(469,687);
    }
	sprite_index = spr_swordmaster_attack_sword;
	mask_index = spr_swordmaster_attack_sword_hitbox;
	image_index = 0;
	global.bossinit = true;
	
}
boss_attack();
	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_swordmaster_idle;
		mask_index = spr_swordmaster_idle;
		}
}

function scr_boss_sweep_attack() {
if(!global.bossinit){

	image_index = 0;
	if (direction_p > 90) {
        image_xscale = 1
		warp(349,687);
        } else {
        image_xscale = -1;
		warp(469,687);
    }
	sprite_index = spr_orbmage_attack_sweep;
	mask_index = spr_orbmage_attack_sweep_hitbox
	image_index = 0;
	global.bossinit = true;
	timer_before_attack = time_before_attack;	
}
boss_attack();

if(timer_before_attack <= 0){
image_speed = 1;
	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_orbmage_idle;
		}
	}
}

function scr_boss_lazer_attack() {
if(!global.bossinit){
	obj_boss.can_attack = false;
	image_index = 0;
	warp(409, 582);
	var what_attack = round(random_range(0,1))
	
	if(what_attack = 1){
		sprite_index = spr_orbmage_attack_lazer;
		mask_index = spr_orbmage_attack_lazer_hitbox;
	} else {
		sprite_index = spr_orbmage_attack_lazer_2;
		mask_index = spr_orbmage_attack_lazer_2_hitbox;
	}
	
	
	global.bossinit = true;
}
	 boss_attack();
	


	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_orbmage_idle;
	}
}

function scr_boss_slam_attack() {
if(!global.bossinit){
	obj_boss.can_attack = false;
	image_index = 0;
	warp(obj_player.x - 30 * image_xscale,687);
	sprite_index = spr_shocksweeper_attack_slam;
	mask_index = spr_shocksweeper_attack_slam_hitbox;
	global.bossinit = true;
}
	 boss_attack();
	


	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_shocksweeper_idle;
	}
}

function boss_attack() {
 var list = ds_list_create();
    var num = instance_place_list(x,y,obj_player,list,false)
    
    if (num > 0) {
        with (obj_player) {
            if (!invincible) { // Only take damage if not invincible
                global.player_health -= 15;
                invincibility_timer = 60; // Set invincibility period
                invincible = true; // Make the player invincible
                screenshake(10, 1, 0.3);
            }
        }
    } 
    ds_list_destroy(list);
}



function warp(x_coord,y_coord){	
x = x_coord;
y = y_coord;
}