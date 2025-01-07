//Healthbar
draw_sprite(spr_bar, 1, 30, 20);

//Stamina bar
draw_sprite(spr_bar, 1, 30, 60);
draw_sprite_stretched(spr_stamina, 1, 38, 68, 228 * (global.player_stamina / 100) , 16)
