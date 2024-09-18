/// @description healthbar

draw_sprite(healthbar_shadow, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(healthbar_health, 0, healthbar_x, healthbar_y, (hp_current / hp_max)* healthbar_width, healthbar_height );
draw_sprite(healthbar, 0, healthbar_x, healthbar_y );