/// @description Insert description here
// You can write your code in this editor

event_inherited();

var next_x = x;
var next_y = y;

var prev_vel_y = vel_y;



if (false == in_ground){
	vel_y = prev_vel_y + grav * global.game_dt;
	next_x = x + vel_x * global.game_dt;
	next_y = y + vel_y * global.game_dt;
}

// Do location checking
if ( place_meeting(next_x, next_y, obj_ground)){
	next_x = x;
	next_y = y;
	
	in_ground = true;
}

if ( false == in_ground && place_meeting(next_x, next_y, obj_person)){
	var ID_person = instance_nearest(next_x, next_y, obj_person);
	ID_person.hp -= damage;
	
	instance_destroy();
}

if ( false == in_ground && place_meeting(next_x, next_y, obj_house)){
	var ID_house = instance_nearest(next_x, next_y, obj_house);
	if ( instance_exists(ID_house)){
		if (ID_house.percent_complete < 100){
			ID_house.house_hp = -1;
		}
	}
	
	instance_destroy();
}



x = next_x;
y = next_y;