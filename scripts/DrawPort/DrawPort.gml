/// @arg x
/// @arg y
/// @arg i
/// @arg [w/-1]
/// @arg list
var X    = argument0;
var Y    = argument1;
var i    = argument2;
var w    = argument3;
var list = argument4;

var q = iPortPadding + iPortRad;
if( w != -1 ) q = w - q; // Is out port

var _x = X + q;
var _y = Y + (iPortPadding + iPortRad) * (i == 0) + iPortSize * i;

draw_set_color(cPort);
draw_circle(_x, _y, iPortRad, 0);

if( global.Wire != -1 && global.Wire[0] == (w != -1) && global.Wire[1] == i && global.Wire[2] == id ) {
    draw_wire_2(_x, _y, mouse_x, mouse_y, cNodeHeader, c_white);
}

