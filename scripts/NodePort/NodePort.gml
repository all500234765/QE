/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg data
var X = argument0;
var Y = argument1;
var w = argument2;
var h = argument3;
var data = argument4;

var In = data[0];
var Out = data[1];

draw_set_color(cText);
draw_text(X + iPortSize + iPortRad, Y + (iPortPadding + iPortRad), "In");
draw_text(X + w - iPortSize * 3   , Y + (iPortPadding + iPortRad), "Out");

for( var i = 0; i < ds_list_size(In) + 1; i++ ) {
    DrawPort(X, Y, i, -1, In);
    
    var in = point_in_circle(mouse_x, mouse_y, X + iPortPadding + iPortRad, Y + (iPortPadding + iPortRad) * (i == 0) + iPortSize * i, iPortRad);
    if( in && mouse_check_button_pressed(mb_left) ) {
        if( global.Wire == -1 ) {
            global.Wire = [eWire.In, i, id];
        } else {
            
        }
    }
}


for( var i = 0; i < ds_list_size(Out) + 1; i++ ) {
    DrawPort(X, Y, i, w, Out);
    
    var in = point_in_circle(mouse_x, mouse_y, X + w - (iPortPadding + iPortRad), Y + (iPortPadding + iPortRad) * (i == 0) + iPortSize * i, iPortRad);
    if( in && mouse_check_button_pressed(mb_left) ) {
        if( global.Wire == -1 ) {
            global.Wire = [eWire.Out, i, id];
        } else {
            
        }
    }
}

