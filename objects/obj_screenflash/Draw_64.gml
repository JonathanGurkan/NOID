if (flash_toggle) {
    flash_time = (flash_time + flash_rate) mod flash_max;    //increment time variable.
    flash_alpha = (1+cos(flash_time))/2;                //cosine for smoother flashing.
    draw_sprite_stretched_ext(spr_pixel,0,0,0,display_get_gui_width(),display_get_gui_height(),c_white,flash_alpha*flash_alpha_max);
}