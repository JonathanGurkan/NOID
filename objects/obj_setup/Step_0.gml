function Quad(_vb,_x1,_y1,_x2,_y2) {
    //Upper triangle
        vertex_position_3d(_vb,_x1,_y1,0);
        vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
        vertex_position_3d(_vb,_x2,_y2,0);
    //Lower Triangle
        vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
        vertex_position_3d(_vb,_x2,_y2,0);
        vertex_position_3d(_vb,_x2,_y2,1); //repositioned vertex
}

vertex_begin(vb,vf);
var _vb = vb;
with(obj_block_light){
    Quad(_vb,x,y,x+sprite_width,y); //Negative Slope Diagonal Wall
    Quad(_vb,x+sprite_width,y,x+sprite_width,y+sprite_height); //Positive Slope Diagonal Wall
    Quad(_vb,x+sprite_width,y+sprite_height,x,y+sprite_height); //Negative Slope Diagonal Wall
    Quad(_vb,x+sprite_width,y,x+sprite_width,y+sprite_height); //Positive Slope Diagonal Wall
    Quad(_vb,x,y,x,y+sprite_height); //Positive Slope Diagonal Wall
}

vertex_end(vb);