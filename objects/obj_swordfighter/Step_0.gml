direction_p = round(point_direction(x,y,obj_player.x, obj_player.y));
if(direction_p <= 360 && direction_p >= 270) direction_p = 0

if(timer_before_attack >= 0) timer_before_attack--;
if (obj_boss.boss_state != BOSSSTATE.SWORD_ATTACK) be_gone();
