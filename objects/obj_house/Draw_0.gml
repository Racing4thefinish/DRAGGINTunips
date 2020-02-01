/// @description Insert description here
// You can write your code in this editor
var sprite   = sprite_index;
var subimage = 0;
var left     = 0;
var top		 = sprite_height - sprite_height * precent_complete/100;
var width	 = sprite_width;
var height	 = sprite_height - top;
var x_loc 	 = x;
var y_loc	 = y - height;
draw_sprite_part(sprite, subimage, left, top, width, height, x_loc, y_loc);