/// @description Insert description here
// You can write your code in this editor
var shoot_dragon_command     = false;
var dragon_is_ready_to_shoot = false;
var move_up                  = false;
var move_down                = false;
var next_y                   = y;
var next_x                   = x;
var percent                  = (y - min_dragon_height)/(max_dragon_height - min_dragon_height);

if ( true == step_first_pass){
	var scale = desired_dragon_height / sprite_height;
	
	image_xscale = scale;
	image_yscale = scale;
	
	step_first_pass = false;
}


// Calcualte the movement speed
var movement_speed_goal = lerp(min_dragon_speed,max_dragon_speed, percent);
movement_speed          = lerp(movement_speed, movement_speed_goal, 0.1);

if ( instance_exists(global.ID_input_controller)){
	shoot_dragon_command = global.ID_input_controller.command_dragon_fire;
	move_up              = global.ID_input_controller.command_dragon_up;
	move_down            = global.ID_input_controller.command_dragon_down;
}

// Solve for next y
if ( true == move_up){
	next_y += dragon_up_speed * global.game_dt;
} else if ( true == move_down){
	next_y += dragon_down_speed * global.game_dt;
}

next_y = clamp(next_y, min_dragon_height, max_dragon_height);

// Solve for next x
next_x += movement_speed * global.game_dt;

// If the dragon goes too far to the right, reset him
if ( next_x > max_x_loc){
	next_x = x_init;
	next_y = y;
	
	//has_tree = true;
	forest_loop_counter += 1;
	
	if ( forest_loop_counter < num_turnips_gain_at_flyback_lvl_0){
		global.num_turnips += num_turnips_gain_at_flyback_lvl_0;
	} else {
		global.num_turnips += num_turnips_gain_at_flyback_lvl_1;
		str_turnips_resupplied                = string(num_turnips_gain_at_flyback_lvl_1) + " MORE TURNIPS!"
	}
	
	global.num_turnips = min(global.num_turnips,max_turnips);
	
	show_turnip_resupply_message = true;
	
	
	
	if ( forest_loop_counter mod increase_fire_rate_pass_count == 0){
		dragon_shoot_dt = dragon_shoot_dt * 0.5
		show_messagge_increase_fire_rate = true;
		audio_play_sound(snd_upgrade,10, false);
	} else {
		audio_play_sound(snd_teleport,10, false);
	}
	
	
}

if ( dragon_shoot_timer < dragon_shoot_dt){
	dragon_shoot_timer += global.game_dt;
} else {
	if (global.num_turnips > 0){
		dragon_is_ready_to_shoot = true;
	}
}

if ( true == dragon_is_ready_to_shoot && 
     true == shoot_dragon_command){
	if ( true == has_tree){
		ID_tree_with_dragon.vel_x = movement_speed;
		
		has_tree            = false;
		ID_tree_with_dragon = noone;
	} else {
		var ID_turnip = instance_create_depth(x,y,depth, obj_turnip);
		ID_turnip.velocity += movement_speed;
		
		movement_speed += knock_back_from_firing_turnip;
		
		global.num_turnips -= 1;
	}
	
	audio_play_sound(snd_fireTurnip,10,false);
	dragon_shoot_timer = 0.0;
}


// Frame counter
var loop_counter = 0;
var loop_max     = 100;
frame_timer += global.game_dt;
if ( next_y > y ){
	image_index = 1;
} else if ( frame_timer > seconds_per_frame){
	image_index += 1;
}

while( frame_timer > seconds_per_frame && loop_counter < loop_max){
	frame_timer -= seconds_per_frame;
	loop_counter += 1;
}

if ( next_x > x){
	var pointing_angle = point_direction(x,y, next_x, next_y);
	if ( pointing_angle > 180){
		pointing_angle -= 360;
	}
	image_angle = lerp(image_angle, pointing_angle, 0.1);
}

x = next_x;
y = next_y;


if ( true == has_tree){
	if ( instance_exists(ID_tree_with_dragon)){
		ID_tree_with_dragon.x = x;
		ID_tree_with_dragon.y = y;
	} else {
		ID_tree_with_dragon = instance_create_depth(x,y,0, obj_tree);
	}
}