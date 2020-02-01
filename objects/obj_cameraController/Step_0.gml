/// @description Insert description here
// You can write your code in this editor

var x_loc = camera_get_view_x(view_camera[0]);
var y_loc = 16;

if ( instance_exists(global.ID_dragon)){
	x_loc = global.ID_dragon.x + dragon_x_offset;
}
camera_set_view_pos(view_camera[0], x_loc, y_loc);