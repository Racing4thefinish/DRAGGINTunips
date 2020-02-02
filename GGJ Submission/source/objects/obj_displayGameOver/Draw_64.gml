/// @description Insert description here
// You can write your code in this editor
if ( true == global.EVENT_GAME_OVER){
	text_game_over = "The Forest is Crying.\nIt has been murdered\n You protected it for " + string(ceil(global.total_game_time)) + " seconds\nPress Enter to Try Again?";

	draw_set_color(c_black);
	draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);
	
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_text(text_x, text_y, text_game_over);
}