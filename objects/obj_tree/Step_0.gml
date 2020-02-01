/// @description Insert description here
// You can write your code in this editor

var next_x = x;
var next_y = y;

var prev_vel_y = vel_y;
var prev_vel_x = vel_x;

vel_y = prev_vel_y + grav * global.game_dt;

next_x = x + vel_x * global.game_dt;
next_y = y + vel_y * global.game_dt;

x = next_x;
y = next_y;