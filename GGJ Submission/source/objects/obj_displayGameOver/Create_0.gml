/// @description Insert description here
// You can write your code in this editor
text_x = display_get_gui_width()/2.0;
text_y = display_get_gui_height()/2.0;
text_game_over = "The Forest is Crying.\nIt has been murdered\n You protected it for: " + string(ceil(global.total_game_time)) + "seconds\nPress Enter to Try Again?";

draw_set_font(fnt_housePercentComplete);
var rect_width  = string_width(text_game_over) + 50;
var rect_height = string_height(text_game_over) + 50;
rect_x1 = text_x - rect_width/2.0;
rect_x2 = text_x + rect_width/2.0;
rect_y1 = text_y - rect_height/2.0;
rect_y2 = text_y + rect_height/2.0;