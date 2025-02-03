if (instance_exists(obj_player)) {
    obj_player.collision_map = layer_tilemap_get_id(layer_get_id("col"));
}