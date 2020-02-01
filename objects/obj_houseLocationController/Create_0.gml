/// @description Insert description here
// You can write your code in this editor
var delta_x_total = 0.0;

ds_list_house_locations   = ds_list_create();
ds_list_house_in_location = ds_list_create();

num_locations    = 10;
min_x_loc_houses = camera_get_view_width(view_camera[0]) * 0.5;
max_x_loc_houses = room_width - camera_get_view_width(view_camera[0]);

delta_x_total = max_x_loc_houses - min_x_loc_houses;
dx_per_house  = delta_x_total / (num_locations - 1);

for ( var i = 0; i < num_locations; i++){
	var x_loc_house = min_x_loc_houses + i * dx_per_house;
	ds_list_add(ds_list_house_locations, x_loc_house);
	ds_list_add(ds_list_house_in_location, false);
}

next_x_loc_for_house = ds_list_find_value(ds_list_house_locations, 0);