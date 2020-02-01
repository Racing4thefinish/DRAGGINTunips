/// @description Insert description here
// You can write your code in this editor

movement_speed = 500; // px/sec

dragon_up_speed = -100;
dragon_down_speed = -dragon_up_speed * 2.0;

max_dragon_height  = room_height - 100;
min_dragon_height = 100;

max_dragon_speed = 1000;//1000; //1000
min_dragon_speed = 100;//100; //100

dragon_shoot_dt    = 1/5; // seconds
dragon_shoot_timer = 0.0;

max_x_loc = room_width - 500;

x_init = x;
y_init = y;

has_tree = true;
ID_tree_with_dragon = noone;