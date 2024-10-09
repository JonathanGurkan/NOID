/// @description Handle player death
if (hp_current <= 0 && !death_triggered) {
    obj_player_d.player_x = x;
    obj_player_d.player_y = y;
    alarm[0] = room_speed * 2;
    death_triggered = true;
}
