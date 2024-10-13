/// @description

///Healthbar
draw_sprite(spr_healthbar, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar_health, abs((hp_current / 10) - 1), healthbar_x, healthbar_y + 1, (hp_current / hp_max) * healthbar_width, healthbar_height);

//Dash cooldown
draw_sprite(spr_dash_cool, dash_cooldown_timer / 2, dash_cool_x, dash_cool_y)

