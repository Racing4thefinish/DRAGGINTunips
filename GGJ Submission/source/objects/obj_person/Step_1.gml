/// @description Insert description here
// You can write your code in this editor

var next_x            = x;
var is_first_to_house = true;
var house_to_work_on_x_loc = 0;
if ( true == begin_step_first_pass){
	scale = desired_person_height/sprite_height;
	image_xscale = scale;
	image_yscale = scale;
	
	y = global.y_loc_house;
	
	begin_step_first_pass = false;
}

// First, is there a house location that has not been started? If so, go to that location
// If not, where is the closest location to help
// If I finish, restart with question 1


// Step 1
if ( false == building_house){
	house_to_work_on_x_loc = global.ID_houseLocationController.next_x_loc_for_house;
	if ( house_to_work_on_x_loc > 0 ){
		// Go to build a new house
		var dir = 1;
		if ( x > house_to_work_on_x_loc){
			dir = -1;
		}
		next_x = x + dir * movement_speed * global.game_dt;
	} else if ( house_to_work_on_x_loc < 0 ){
		var ID_neareast_house      = noone;
		var distance_nearest_house = room_width;
	
		// Set to default value
		house_to_work_on_x_loc = 0;
	
		// Go help with a house
		for (var i = 0; i < global.num_houses; i++){
			var house_x_loc = ds_list_find_value(global.ID_houseLocationController.ds_list_house_locations,i);
			var ID_house = instance_nearest(house_x_loc,y, obj_house);
			if (ID_house.percent_complete < 100){
				var distance = abs(x - ID_house.x);
				if ( distance < distance_nearest_house){
					distance_nearest_house = distance;
					ID_neareast_house      = ID_house;
				}
			}
		}
	
		if ( instance_exists(ID_neareast_house)){
			house_to_work_on_x_loc = ID_neareast_house.x;
		}
		
		if ( house_to_work_on_x_loc != 0){
			var dir = 1;
			if ( x > house_to_work_on_x_loc){
				dir = -1;
			}
			next_x = x +dir * movement_speed * global.game_dt;
		}
	
	}

	// Check the distance to the nearest house location and build OR work on it
	var threshold_for_finding_house = 3 * movement_speed * global.game_dt;
	var distance_to_building_house  = abs(next_x - house_to_work_on_x_loc);
	if ( distance_to_building_house < threshold_for_finding_house ) {
		next_x         = house_to_work_on_x_loc;
		
		if (place_meeting(house_to_work_on_x_loc, y, obj_house)){
			is_first_to_house = false;
		}
		if ( true == is_first_to_house){
			ID_house_building = instance_create_depth(house_to_work_on_x_loc, global.y_loc_house, depth + 1, obj_house);
		} else {
			ID_house_building = instance_nearest(next_x, y, obj_house);
		}
		building_house = true;
	}
	
	// Set the direction of the sprite
	var dir_turn = sign(next_x - x);

	if ( dir_turn != 0 ){
		if ( true == building_house){
			image_xscale = -scale;
		} else {
			image_xscale = -dir_turn*scale;
		}
	}
	
} else {
	// If the house being worked on is destoryed, delete the person
	if ( false == instance_exists(ID_house_building)){
		 instance_destroy();
	}
	
	// If the house completes beinng built, mark the person as not building a house
	if ( true == instance_exists(ID_house_building) && ID_house_building.percent_complete >= 100){
		building_house = false;
	}
	
	image_xscale = -scale;
}

if ( false == global.EVENT_GAME_OVER){
	x = next_x;
}

// Walk animation code
frame_timer += global.game_dt;
if ( frame_timer > seconds_per_frame){
	image_index += 1;
	
	var loop_counter = 0;
	var loop_max     = 100;
	while( frame_timer > seconds_per_frame && loop_counter < loop_max){
		frame_timer -= seconds_per_frame;
		
		loop_counter += 1;
	}
}

//// OLD MOVEMENT CODE
//// if "build_house_x_loc" < 0 then All houses have started to be built
//if ( build_house_x_loc < 0 && false == building_house){
//	ID_house = instance_nearest(x, y, obj_house);
//	
//	if ( ID_house.percent_complete == 100){
//		build_house_x_loc = ds_list_find_value(global.ID_houseLocationController.ds_list_house_locations,0);
//		
//		ID_house = instance_nearest(build_house_x_loc, y, obj_house);
//	}
//	if ( noone != ID_house){
//		build_house_x_loc = ID_house.x;
//		is_first_to_house = false;
//	}
//}
//
//
//var threshold_for_finding_house = 3 * movement_speed * global.game_dt;
//var distance_to_building_house  = abs(next_x - build_house_x_loc);
//
//if ( distance_to_building_house < threshold_for_finding_house && false == building_house) {
//	next_x         = build_house_x_loc;
//	
//	if ( true == is_first_to_house){
//		ID_house = instance_create_depth(build_house_x_loc, global.y_loc_house, depth + 1, obj_house);
//	}
//	
//	building_house = true;
//}
//
//if ( false == building_house){
//	var direction_x = sign( build_house_x_loc - x);
//	next_x = x + direction_x * movement_speed * global.game_dt;
//}
//
//var dir_turn = sign(next_x - x);
//
//if ( dir_turn != 0 ){
//	if ( true == building_house){
//		image_xscale = -scale;
//	} else {
//		image_xscale = -dir_turn*scale;
//	}
//}
//
//
//x = next_x;
//
//if ( true == building_house && false == instance_exists(ID_house)){
//	 instance_destroy();
//}
//
//if ( true == building_house && true == instance_exists(ID_house) && ID_house.percent_complete == 100){
//	building_house = false;
//}
