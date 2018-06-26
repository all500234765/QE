/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg top
var X = argument0;
var Y = argument1;
var w = argument2;
var h = argument3;
var top = argument4;

if( top ) {
    draw_roundrect(X + 0, Y + 0    , X + w - 1, Y + h - 1, 0);
    draw_rectangle(X + 1, Y + h / 2, X + w - 1, Y + h - 1, 0);
} else {
    draw_roundrect(X + 0, Y + h / 2, X + w - 1, Y + h - 1  , 0);
    draw_rectangle(X + 1, Y + 0    , X + w - 1, Y + h / 1.5, 0);
}
