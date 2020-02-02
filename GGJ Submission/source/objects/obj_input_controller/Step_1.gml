/// @description Insert description here
// You can write your code in this editor

if ( keyboard_check(key_press_dragon_fire)){
	command_dragon_fire = true;
} else {
	command_dragon_fire = false;
}

if ( keyboard_check(key_press_dragon_up) || keyboard_check(vk_left) ){
	command_dragon_up = true;
} else {
	command_dragon_up = false;
}

if ( keyboard_check(key_press_dragon_down) || keyboard_check(vk_right) ){
	command_dragon_down = true;
} else {
	command_dragon_down = false;
}