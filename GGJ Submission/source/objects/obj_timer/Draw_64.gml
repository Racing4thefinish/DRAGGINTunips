/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_housePercentComplete);
var str         = "Forest Protection Timer:\n" + string(floor(global.total_game_time));
var string_wid  = string_width(str);
var string_heit = string_height(str);

var draw_x_loc = display_get_gui_width() /2.0;
var draw_y_loc = string_heit * 1.05;
var x1  = draw_x_loc - 0.5 * string_wid - 10;
var x2  = draw_x_loc + 0.5 * string_wid + 10;
var y1 = draw_y_loc - string_heit- 10;
var y2 = draw_y_loc;
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_set_color(c_white);
draw_text(draw_x_loc, draw_y_loc, str);