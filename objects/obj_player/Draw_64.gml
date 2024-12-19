//Healthbar
draw_sprite(spr_bar, 1, 30, 20);

//Stamina bar
draw_sprite(spr_bar, 1, 30, 60);
draw_sprite_stretched(spr_stamina, abs(10 - (global.player_stamina / 10) - 1), 38, 68, (global.player_stamina / global.player_max_stamina), 10);
