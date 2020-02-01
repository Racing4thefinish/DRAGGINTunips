/// @description Insert description here
// You can write your code in this editor

var next_x = x;

build_house_x_loc = global.ID_houseLocationController.next_x_loc_for_house;

var threshold_for_finding_house = 3 * movement_speed * global.game_dt;
var distance_to_building_house  = abs(next_x - build_house_x_loc);

if ( distance_to_building_house < threshold_for_finding_house && false == building_house) {
	next_x         = build_house_x_loc;
	
	ID_house = instance_create_depth(build_house_x_loc, global.y_loc_house, depth + 1, obj_house);
	building_house = true;
}

if ( false == building_house){
	var direction_x = sign( build_house_x_loc - x);
	next_x = x + direction_x * movement_speed * global.game_dt;
}

x = next_x;

if ( true == building_house && ID_house == noone){
	 instance_destroy();
}