/// @arg xoff
/// @arg yoff
/// @arg active
__uiMX = argument2 * (mouse_x - argument0);
__uiMY = argument2 * (mouse_y - argument1);

__uiProj = matrix_get(matrix_projection);

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
matrix_set(matrix_projection, matrix_build_projection_ortho(WIDTH, -HEIGHT, -10, 100));
__uiClickZ = 0;
__uiOrientation = uiFlags.Null;

SV_CalcMouseDelta; // Calculate mouse delta

