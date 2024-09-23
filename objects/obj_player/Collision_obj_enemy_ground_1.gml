if (!invincible) {
    hp_current -= 10; 
    invincible = true; 
    invincibility_timer = invincibility_duration; 
}


if (invincible) {
    invincibility_timer -= 1; 
    if (invincibility_timer <= 0) {
        invincible = false;
    }
    }







