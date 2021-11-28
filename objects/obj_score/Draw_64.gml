draw_set_font(fn_textlarge);

draw_text_color(5,5, "Final size: ", c_aqua, c_aqua, c_fuchsia, c_fuchsia, 1 );
draw_text_color(100, 5, string( 1 + (global.score_current * 0.005) ) + "x", c_aqua, c_aqua, c_fuchsia, c_fuchsia, 1 );