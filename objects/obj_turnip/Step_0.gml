/// @description Insert description here
// You can write your code in this editor

var next_x = x;
var next_y = y;

if (false == in_ground){
	next_x += velocity * dcos(dir_shoot) * global.game_dt;
	next_y += velocity * dsin(dir_shoot) * global.game_dt;
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
}

x = next_x;
y = next_y;