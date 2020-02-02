/// @description Insert description here
// You can write your code in this editor
if ( global.num_completed_houses == global.num_houses){
	global.EVENT_GAME_OVER = true;
}

if ( true == global.EVENT_GAME_OVER && 
     true == keyboard_check(vk_enter)  ){
		 game_restart();
}