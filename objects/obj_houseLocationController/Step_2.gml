/// @description Insert description here
// You can write your code in this editor

var found_next_loc_house = false;
for ( var i = 0; i < num_locations; i++){
	var x_loc_house = ds_list_find_value(ds_list_house_locations, i);
	var ID_house    = collision_circle(x_loc_house, global.y_loc_house, 10, obj_house,0, false);
	
	if ( noone == ID_house){
		ds_list_replace(ds_list_house_in_location,i,false);
		
		// the furthest point gets a house
		if ( false == found_next_loc_house){
			next_x_loc_for_house = x_loc_house;
			found_next_loc_house = true;
		}
	} else {
		ds_list_replace(ds_list_house_in_location,i,true);
	}
}