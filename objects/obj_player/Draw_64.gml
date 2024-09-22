/// @description Healthbar

draw_sprite_stretched(spr_healthbar_health, abs((hp_current / 10) - 1), healthbar_x, healthbar_y, (hp_current / hp_max)* healthbar_width, healthbar_height);
draw_sprite(spr_healthbar, 0, healthbar_x, healthbar_y);