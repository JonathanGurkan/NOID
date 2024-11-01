var _u_pos = u_pos;


    with (obj_light) {
        shader_set(sh_lighting);
        shader_set_uniform_f(_u_pos,x,y);
        draw_rectangle(0, 0, 4000, 8000, false);
        shader_reset();
    }


