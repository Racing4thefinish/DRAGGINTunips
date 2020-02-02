/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
hp = 1;

desired_person_height  = 200;
begin_step_first_pass = true;
draw_first_pass = true;

movement_speed    = 400; // pixels/sec
building_house    = false;
build_house_x_loc = 0.5 * camera_get_view_width(view_camera[0]);

ID_house_building = noone;

frames_per_second = 6;
seconds_per_frame = 1/frames_per_second;
frame_timer       = 0.0 + random(seconds_per_frame);


build_speed_person = 10;
scale = 1.0;