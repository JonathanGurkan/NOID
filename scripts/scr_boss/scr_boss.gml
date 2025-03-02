function scr_boss_idle(){
	with (par_boss){	
	x = origin_x + radius * cos(degtorad(t));
	y = origin_y - radius * sin(degtorad(t));
	t++;
	}
}

function scr_boss_sword_attack() {
if(!init){
	if (direction_p > 90) {
        image_xscale = -1
        } else {
        image_xscale = 1;
    }
	sprite_index = spr_swordmaster_attack_strong;
	image_speed = 0;
	image_index = 0;
	init = true;
	timer_before_attack = time_before_attack;	
	warp(obj_player.x+1000*image_xscale,obj_player.y);
	with (obj_swordfighter_1) warp(256,48);
	with (obj_swordfighter_2) warp(256,48);
}


if(timer_before_attack <= 0){
image_speed = 1;
if(animation_end()){
warp(256,48);
}

}

}

function warp(x_coord,y_coord){	
x = x_coord;
y = y_coord;
}