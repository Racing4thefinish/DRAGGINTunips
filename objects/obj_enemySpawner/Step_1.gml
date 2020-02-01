/// @description Insert description here
// You can write your code in this editor

if ( create_enemy_timer < create_enemy_dt){
	create_enemy_timer += global.game_dt;
} else {
	var x_loc = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + enemy_x_offset;
	var y_loc = global.y_loc_house - 0.5 * sprite_get_height(sprite_height);
	
	instance_create_depth(x_loc, y_loc, 0, obj_person);
	create_enemy_timer = 0.0;
}