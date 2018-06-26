/// @desc draw_wire(x1, y1, x2, y2, ...);
/// @arg x1
/// @arg y1
/// @arg ...
var coords;
var c_count = argument_count / 2;

if( c_count < 2 || c_count > 12 || frac(c_count) > 0 ) return 1; // Not enoght arguments or less or more then need

var index = 0;
for( var i = 0; i < argument_count; i += 2 ) {
    coords[index, 0] = argument[i];
    coords[index, 1] = argument[i+1];
    
    index++;
}

var vx = 0;
var vy = 0;

for( var t = 0; t < 1; t += .01 ) {
    var col = merge_color(m_col1, m_col2, t);
    
    vx0 = vx;
    vy0 = vy;
    
    // x
    vx =                     power((1 - t), 3)  * coords[0, 0];
    if( c_count >= 2 ) vx += 3 * t * sqr(1 - t) * coords[1, 0];
    if( c_count >= 3 ) vx += 3 * sqr(t)*(1 - t) * coords[2, 0];
    if( c_count >= 4 ) vx += power(t, 3)        * coords[3, 0];
    if( c_count >= 5 ) vx += t                  * coords[4, 0];
    if( c_count >= 6 ) vx +=                      coords[5, 0];
    
    // y
    vy =                     power((1 - t), 3)  * coords[0, 1];
    if( c_count >= 2 ) vy += 3 * t * sqr(1 - t) * coords[1, 1];
    if( c_count >= 3 ) vy += 3 * sqr(t)*(1 - t) * coords[2, 1];
    if( c_count >= 4 ) vy += power(t, 3)        * coords[3, 1];
    if( c_count >= 5 ) vy += t                  * coords[4, 1];
    if( c_count >= 6 ) vy +=                      coords[5, 1];
    
    if( t == 0 ) { continue; }
    draw_line_width_color(vx0, vy0, vx, vy, 2, col, col);
}

