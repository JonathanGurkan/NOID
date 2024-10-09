// Physics and movement logic remains unchanged
var obj_list = [obj_platform_tile_1, obj_player];  // Include the player in collisions

// Check if the player still exists
if (instance_exists(obj_player)) {
    var dist_to_player = point_distance(x, y, player.x, player.y);
    
    if (dist_to_player < trigger_radius) {
        idle = false;  // Enemy starts chasing the player
    } else {
        idle = true;
        move_x = 0;  // Enemy remains idle or stops chasing
    }
    
    // If the enemy is not idle, it follows the player
    if (!idle) {
        // Get direction towards the player
        var enemy_direction = point_direction(x, y, player.x, player.y - 10);
        
        // Move the enemy towards the player, adjusting move_x smoothly
        move_x = lengthdir_x(move_speed, enemy_direction);
    }
} else {
    // If the player doesn't exist, the enemy becomes idle
    idle = true;
    move_x = 0;
}

