draw_self();

if (fade_in_time < 0) {
	draw_set_halign( fa_center );
	draw_set_font( fn_textlarge );
	draw_text_color(320 +1, 330 +1,  "Press any key to start!"
							, c_black, c_black, c_black, c_black, .5 + dsin(fade_in_time));
	draw_text_color(320 +1, 330 -1,  "Press any key to start!"
							, c_black, c_black, c_black, c_black, .5 + dsin(fade_in_time));
	draw_text_color(320 -1, 330 +1,  "Press any key to start!"
							, c_black, c_black, c_black, c_black, .5 + dsin(fade_in_time));
	draw_text_color(320 -1, 330 -1,  "Press any key to start!"
							, c_black, c_black, c_black, c_black, .5 + dsin(fade_in_time));
	draw_text_color(320, 330,  "Press any key to start!"
							, c_lime, c_lime, c_white, c_white, .5 + dsin(fade_in_time));

}