/// @description Insert description here
// You can write your code in this editor

build_speed = 0

if ( true == begin_step_first_pass){
	scale = desired_building_height/sprite_height;
	//image_xscale = scale;
	//image_yscale = scale;
	
	y = global.y_loc_house;
	
	begin_step_first_pass = false;
}