flash_trigger = false;   // Trigger to start the flash
flash_alpha_max = 1;
flash_alpha = 0;
flash_max = pi;   // Half a cycle of cosine wave for one flash (pi instead of pi*2)
flash_time = 0;
flash_rate = flash_max / 240;  // Adjust to control the duration of the flash (30 frames = 0.5 sec)
flash_active = false;