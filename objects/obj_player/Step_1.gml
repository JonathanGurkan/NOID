/// @description Check if player HP is 0 and trigger death sequence 
if (hp_current <= 0 && !death_triggered) {  // Ensure this only runs once
    instance_create_layer(x, y, layer, obj_player_d);
    death_triggered = true;  // Flag to prevent multiple instances
    instance_deactivate_object(self);  // Disable player object but don't destroy yet
}

