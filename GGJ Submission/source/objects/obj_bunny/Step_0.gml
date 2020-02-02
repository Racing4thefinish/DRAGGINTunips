/// @description Insert description here
// You can write your code in this editor
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
