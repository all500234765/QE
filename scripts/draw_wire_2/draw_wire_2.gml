/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg col1
/// @arg col2
var x1   = argument0;
var y1   = argument1;
var x2   = argument2;
var y2   = argument3;

m_col1 = argument4;
m_col2 = argument5;

draw_wire(x1                  , y1                  , 
          x1 + (x2 - x1) * .55, y1                  , 
          x1 + (x2 - x1) * .65, y1 + (y2 - y1) * .85, 
          x2                  , y2);
