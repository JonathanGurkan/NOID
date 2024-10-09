/// @description End of death animation - restart the room
image_speed = 1;
instance_destroy();  // Destroy the death object
room_restart();  // Reset the room after the animation ends

