/// @description Insert description here
// You can write your code in this editor

var create_enemy_dt = 100.0;

if (      global.total_game_time >= start_lvl_3_at_time_is) create_enemy_dt = create_enemy_dt_lvl_3;
else if ( global.total_game_time >= start_lvl_2_at_time_is) create_enemy_dt = create_enemy_dt_lvl_2;
else if ( global.total_game_time >= start_lvl_1_at_time_is) create_enemy_dt = create_enemy_dt_lvl_1;
else if ( global.total_game_time >= start_lvl_0_at_time_is) create_enemy_dt = create_enemy_dt_lvl_0;

if ( false == global.EVENT_GAME_OVER){
	if ( create_enemy_timer < create_enemy_dt){
		create_enemy_timer += global.game_dt;
	} else {
		var x_loc = room_width;//camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + enemy_x_offset;
		var y_loc = global.y_loc_house - 0.5 * sprite_get_height(sprite_height);
	
		instance_create_depth(x_loc, y_loc, 0, obj_person);
		create_enemy_timer = 0.0;
	}
}