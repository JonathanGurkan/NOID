//MOVEMENT PLAYER

// Reset horizontal movement
move_x = 0;

// Basic horizontal movement (A and D for left and right)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    move_x = -walk_speed;
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    move_x = walk_speed;
}


if (place_meeting(x, y+2, obj_ground_tile_1))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

// Dashing (Shift key)
if (keyboard_check_pressed(vk_shift) && dash_ready && dash_time == 0) {
    if (move_x != 0) { // Only dash if moving horizontally
        dash_ready = false;
        dash_time = dash_duration;
		
    }
}

// Handle the dash when active
if (dash_time > 0) {
    dash_time -= 1;
move_y = 0;
    if (move_x > 0) {
        move_x = dash_speed; // Dash to the right
    } else if (move_x < 0) {
        move_x = -dash_speed; // Dash to the left
    }
} else if (dash_time == 0 && !dash_ready) {
    // Start cooldown after dash ends
    dash_cooldown -= 1;

    if (dash_cooldown <= 0) {
        dash_ready = true; // Reset dash
        dash_cooldown = 30; // Reset cooldown
    }
}

// Horizontal collision check
if (place_meeting(x + move_x, y, obj_ground_tile_1)) {
    move_x = 0; // Stop movement when colliding with ground
}

// Vertical collision check
if (place_meeting(x, y + move_y, obj_ground_tile_1)) {
    move_y = 0; // Stop vertical movement when hitting ground
}

// Apply movement
x += move_x;
y += move_y;
