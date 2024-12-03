// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nine_slice_box_stretched(){
    /// @desc NineSliceBoxStretched(sprite, x1, y1, x2, y2)
    /// @arg sprite
    /// @arg x1 left
    /// @arg y1 top
    /// @arg x2 right
    /// @arg y2 bottom
    /// @arg index image index
    
    var _size = sprite_get_width(argument0) / 3;
    var x1 = argument1;
    var y1 = argument2;
    var x2 = argument3;
    var y2 = argument4;
    var _index = argument5;
    var _w = x2 - x1;
    var _h = y2 - y1;
    
    // CORNERS
    // top left
    draw_sprite_part_ext(argument0, _index, 0, 0, _size, _size, x1, y1, 1, 1, c_white, 1);
    // top right
    draw_sprite_part_ext(argument0, _index, _size*2, 0, _size, _size, x1 + _w - _size, y1, 1, 1, c_white, 1);
    // bottom left
    draw_sprite_part_ext(argument0, _index, 0, _size*2, _size, _size, x1, y1 + _h - _size, 1, 1, c_white, 1);
    // bottom right
    draw_sprite_part_ext(argument0, _index, _size*2, _size*2, _size, _size, x1 + _w - _size, y1 + _h - _size, 1, 1, c_white, 1);
    
    // EDGES
    // left edge
    draw_sprite_part_ext(argument0, _index, 0, _size, _size, _size, x1, y1 + _size, 1, (_h - (_size*2)) / _size, c_white, 1);
    // right edge
    draw_sprite_part_ext(argument0, _index, _size*2, _size, _size, _size, x1 + _w - _size, y1 + _size, 1, (_h - (_size*2)) / _size, c_white, 1);
    // top edge
    draw_sprite_part_ext(argument0, _index, _size, 0, _size, _size, x1 + _size, y1, (_w - (_size*2)) / _size, 1, c_white, 1);
    // bottom edge
    draw_sprite_part_ext(argument0, _index, _size, _size*2, _size, _size, x1 + _size, y1 + _h - _size, (_w - (_size*2)) / _size, 1, c_white, 1);
    
}