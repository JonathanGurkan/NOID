if (show_game_info) {
    // Draw semi-transparent background centered around the player
    draw_set_color(c_black);
    draw_set_alpha(0.75);
        draw_rectangle(0,0,RESOLUTION_W, RESOLUTION_H, false);
    draw_set_alpha(1);

    // Get virtual text box dimensions relative to the player
    var draw_x = RESOLUTION_W / 2;
    var draw_y = 32

    // Draw only the visible portion of the text
    for (var i = 0; i < array_length(text_lines); i++) {
        var y_pos = draw_y + (i * line_height) - scroll_y;
        if (y_pos > draw_y - line_height && y_pos < draw_y + 700) { 
            draw_set_color(c_white);
            draw_set_font(f_small_button_text);
            draw_set_halign(fa_center);
            draw_text(draw_x, y_pos, text_lines[i]);
        }
    }
}