direction_p = round(point_direction(x,y,obj_player.x, obj_player.y));
if(direction_p <= 360 && direction_p >= 270) direction_p = 0


if(timer_before_attack >= 0) timer_before_attack--;
if (obj_boss.boss_state != BOSSSTATE.SWEEP_ATTACK) be_gone();


if(enemy_hp <= 0){
instance_destroy();
with(obj_boss){
		for (var i = 0; i < array_length(attack_array); i++) {
    if (attack_array[i] == 3) {
        attack_array[i] = -1;
        break;
    }
}
		init = false;
		boss_state = BOSSSTATE.IDLE;
		can_attack = true;
	}
} 

draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)