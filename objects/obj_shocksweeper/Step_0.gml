if(timer_before_attack >= 0) timer_before_attack--;
if (obj_boss.boss_state != BOSSSTATE.SLAM_ATTACK) be_gone();
if (obj_boss.boss_state = BOSSSTATE.CUTSCENE){
	if (!audio_is_playing(snd_boss_music)) audio_play_sound(snd_boss_music,0,1,0.5); 
if(radius > 30){
	radius -=2;
}}

if(enemy_hp <= 0){
instance_destroy();
with(obj_boss){
		for (var i = 0; i < array_length(attack_array); i++) {
    if (attack_array[i] == 1) {
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

