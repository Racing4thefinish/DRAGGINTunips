/// @description Insert description here
// You can write your code in this editor
var shoot_dragon_command     = false;
var dragon_is_ready_to_shoot = false;
var move_up                  = false;
var move_down                = false;
var next_y                   = y;
var next_x                   = x;
var percent                  = (y - min_dragon_height)/(max_dragon_height - min_dragon_height);


// Calcualte the movement speed
movement_speed = lerp(min_dragon_speed,max_dragon_speed, percent);

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
	next_y = y_init;
}

if ( dragon_shoot_timer < dragon_shoot_dt){
	dragon_shoot_timer += global.game_dt;
} else {
	dragon_is_ready_to_shoot = true;
}

if ( true == dragon_is_ready_to_shoot && 
     true == shoot_dragon_command){
	var ID_turnip = instance_create_depth(x,y,depth, obj_turnip);
	ID_turnip.velocity += movement_speed;
	dragon_shoot_timer = 0.0;
}


x = next_x;
y = next_y;