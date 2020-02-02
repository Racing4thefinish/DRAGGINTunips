/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < room_width; i = i + sprite_get_width(spr_ground)){
	var x_loc = i;
	var y_loc = global.y_loc_house;
	instance_create_depth(x_loc, y_loc, 0, obj_ground);
}

instance_destroy();