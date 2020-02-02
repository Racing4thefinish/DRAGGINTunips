/// @description Insert description here
// You can write your code in this editor

if ( true == draw_first_pass){
	draw_first_pass = false;
} else {
	draw_self();
}

var str = "";
if ( true == show_turnip_resupply_message){
	if ( show_turnip_resupply_message_timer < show_turnip_resupply_message_duration){
		show_turnip_resupply_message_timer += global.game_dt;
		str = str_turnips_resupplied;
		
		if ( true == show_messagge_increase_fire_rate){
			str += "\nFIRE RATE INCREASED!";
		}
	} else {
		show_turnip_resupply_message       = false;
		show_messagge_increase_fire_rate   = false;
		show_turnip_resupply_message_timer = 0.0;
	}
}

var draw_x_loc = x + 80;
var draw_y_loc = y;
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_arial15);
draw_set_color(c_black);
draw_text(draw_x_loc, draw_y_loc, str);
