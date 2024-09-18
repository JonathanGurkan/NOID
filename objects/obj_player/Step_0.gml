//MOVEMENT PLAYER

// Reset horizontal movement
move_x = 0;

// Basic horizontal movement (A and D for left and right)


if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    move_x = -walk_speed;

} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    move_x = walk_speed;
}


if (place_meeting(x, y+2, obj_collision_parent ))
{
	move_y = 0;
	if (keyboard_check(vk_space)) || keyboard_check(ord("W")) move_y = -jump_speed;
}
else if (move_y < 15) move_y += 1;

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


if (place_meeting(x + move_x, y, obj_collision_parent)) {
    move_x = 0; // Stop movement when colliding with ground
}

// Vertical collision check
if (place_meeting(x, y + move_y, obj_collision_parent)) {
    move_y = 0; // Stop vertical movement when hitting ground
}

if (place_meeting(x, y, obj_enemy_ground_1)) {
	if (!invincible) {
        hp_current -= 10; 
        invincible = true; 
        invincibility_timer = invincibility_duration;
    }
	
if (!knockback) {
	x += knockback_x;
    y += knockback_y;
	knockback_timer = knockback_duration;
	knockback = true;
	knockback_x *= knockback_strength;
		
if (abs(knockback_x) < 0.1) knockback_x = 0;
if (abs(knockback_y) < 0.1) knockback_y = 0;
knockback_x *= knockback_strength;
knockback_y *= knockback_strength;

	}

if (knockback)
knockback_timer -= 1;
  
  if (knockback_timer <= 0) {
      knockback = false;
    }
}


if (invincible) {
    invincibility_timer -= 1; 

    // Once the timer reaches 0, remove invincibility
    if (invincibility_timer <= 0) {
        invincible = false;
    }
}


// Apply movement
x += move_x;
y += move_y;
