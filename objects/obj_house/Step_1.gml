/// @description Insert description here
// You can write your code in this editor

if ( precent_complete < 100){
	precent_complete += global.game_dt * build_speed;
	precent_complete = min(precent_complete, 100);
} else  {
	percent_complete = 100;
}