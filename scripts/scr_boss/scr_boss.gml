function be_gone(){
		x = origin_x + radius * cos(degtorad(t));
	y = origin_y - radius * sin(degtorad(t));
	t++;
}

function scr_boss_sword_attack() {
if(!global.bossinit){
	if (direction_p > 90) {
        image_xscale = 1
		warp(349,687);
        } else {
        image_xscale = -1;
		warp(469,687);
    }
	sprite_index = spr_swordmaster_attack_strong;
	//mask_index = spr_swordmaster_attack_strong_hitbox
	image_speed = 0;
	image_index = 0;
	global.bossinit = true;
	timer_before_attack = time_before_attack;	
}


if(timer_before_attack <= 0){
image_speed = 1;
	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_swordmaster;
		}
	}
}

function scr_boss_sweep_attack() {
if(!global.bossinit){
	if (direction_p > 90) {
        image_xscale = 1
		warp(349,687);
        } else {
        image_xscale = -1;
		warp(469,687);
    }
	sprite_index = spr_orbmage_attack_sweep;
	//mask_index = spr_swordmaster_attack_strong_hitbox
	image_speed = 0;
	image_index = 0;
	global.bossinit = true;
	timer_before_attack = time_before_attack;	
}


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

function scr_boss_slam_attack() {
if(!global.bossinit){
	obj_boss.can_attack = false;
	image_index = 0;
	warp(obj_player.x,687);
	sprite_index = spr_shocksweeper_attack_slam;
	global.bossinit = true;
}
	if(animation_end()){
		with(obj_boss){
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
		}
		sprite_index = spr_shocksweeper_idle;
	}
}





function warp(x_coord,y_coord){	
x = x_coord;
y = y_coord;
}