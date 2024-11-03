var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _vb = vb;


    with (obj_light) {
        shader_set(sh_lighting);
        shader_set_uniform_f(_u_pos,x,y);
        draw_rectangle(0, 0, 4000, 8000, false);
        shader_set(sh_shadow);
        shader_set_uniform_f(_u_pos2,x,y)
        vertex_submit(_vb,pr_trianglelist,-1)
    }
shader_reset();

