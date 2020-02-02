/// @description Insert description here
// You can write your code in this editor

if ( percent_complete < 100){
	percent_complete += global.game_dt * build_speed;
	percent_complete = min(percent_complete, 100);
} else  {
	if ( true == house_finished_first_pass){
		global.num_completed_houses += 1;
		house_finished_first_pass = false;
		
		show_debug_message("Houses Completed: " + string(global.num_completed_houses));
		audio_play_sound(snd_houseBuilt,10,false);
		global.housesCompleted += 1;
	}
	percent_complete = 100;
}

if ( house_hp <= 0){
	instance_destroy();
}