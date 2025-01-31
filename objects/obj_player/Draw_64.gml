//Health bar
draw_sprite(spr_bar, 1, 30, 20);
draw_sprite_stretched(spr_health, 1, 38, 28, 228 * (global.player_health / 100) , 16)

//Stamina bar
draw_sprite(spr_bar, 1, 30, 60);
draw_sprite_stretched(spr_stamina, 1, 38, 68, 228 * (global.player_stamina / 100) , 16)

//Pause sceen
if (global.gamepaused) {
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(0,0,RESOLUTION_W, RESOLUTION_H, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(f_large_button_text);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.25, "Game Paused");
    for (var i = 0; i < array_length(pause_option); i++) {
        var _print = "";
        if (i == pause_option_selected) {
            _print += "> " + pause_option[i] + " <";
        } else {
            _print += pause_option[i]
            draw_set_alpha(0.7)
        }
        draw_set_font(f_button_text)
        draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.25 + 100 + (i * 50), _print)
        draw_set_alpha(1)
    }
}
