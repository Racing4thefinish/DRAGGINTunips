/// @description Insert description here
// You can write your code in this editor

draw_first_pass = true;
step_first_pass = true;

forest_loop_counter = 0;

image_speed       = 0;
frames_per_second = 2;
frame_timer       = 0.0;
seconds_per_frame = 1/frames_per_second;

desired_dragon_height = 200;

movement_speed = 500; // px/sec

dragon_up_speed = -700;
dragon_down_speed = -dragon_up_speed * 2.0;

max_dragon_height  = global.y_loc_house - 250;
min_dragon_height = 100;

max_dragon_speed = 2000; //1000
min_dragon_speed = 100;//100; //100

dragon_shoot_dt_init = 0.25;
dragon_shoot_dt      = 0.25; // seconds
dragon_shoot_timer   = 0.0;
increase_fire_rate_pass_count = 5;
show_messagge_increase_fire_rate = false;

max_x_loc = room_width - 2688;
instance_create_depth(max_x_loc, global.y_loc_house, depth, obj_gate);

x_init = x;

has_tree = false;

knock_back_from_firing_turnip = -300;
ID_tree_with_dragon = noone;

global.num_turnips = 20;
num_turnips_gain_at_flyback_lvl_0 = 5;
flyback_lvl_1_starts_at           = 10;
num_turnips_gain_at_flyback_lvl_1 = 10;
max_turnips = 400;

show_turnip_resupply_message          = false;
show_turnip_resupply_message_duration = 1.5;
show_turnip_resupply_message_timer    = 0.0;
str_turnips_resupplied                = string(num_turnips_gain_at_flyback_lvl_0) + " MORE TURNIPS!"