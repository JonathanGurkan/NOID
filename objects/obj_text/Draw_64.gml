nine_slice_box_stretched(spr_textbox,x1,y1,x2,y2,background);
draw_set_font(bubble_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var print = string_copy(message,1,text_progress);
draw_text((x1+x2) /2, y1+8, print);
draw_set_color(c_black);
draw_text((x1+x2) / 2, y1+7, print);