/// @description Insert description here
// You can write your code in this editor

var draw_y_loc = 0.0;
var draw_x_loc = x + 0.5*sprite_width;

if ( true == draw_first_pass){
	
	draw_first_pass = false;
} else {
	var sprite   = sprite_index;
	var subimage = 0;
	var left     = 0;
	var top		 = sprite_height - sprite_height * percent_complete/100;
	var width	 = sprite_width;
	var height	 = sprite_height - top;
	var x_loc 	 = x;
	var y_loc	 = y - height;
	draw_y_loc   = y_loc - 5;
	draw_sprite_part(sprite, subimage, left, top, width, height, x_loc, y_loc);
	//draw_self();
}
draw_set_font(fnt_housePercentComplete);

var str = string(ceil(percent_complete)) + "%";
var x1  = draw_x_loc - 0.5 * string_width(str) - 10;
var x2  = draw_x_loc + 0.5 * string_width(str) + 10;
var y1 = draw_y_loc - string_height(str) - 10;
var y2 = draw_y_loc;
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_set_color(c_white);
draw_text(draw_x_loc, draw_y_loc, str);