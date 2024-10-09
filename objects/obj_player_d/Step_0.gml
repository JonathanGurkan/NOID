/// @description End of death animation - restart the room
if (obj_player.death_triggered) {
    instance_create_layer(player_x, player_y, obj_player_d)
    image_speed = 1;
}


