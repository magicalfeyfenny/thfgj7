if ( obj_mystia.phase == PHASE_APPROACH && obj_mystia.approach_timer > 30 ) {
	draw_sprite_stretched( spr_ready, 0, 0, 0, window_get_width(), window_get_height() );
}
if ( obj_mystia.phase == PHASE_APPROACH && obj_mystia.approach_timer < 30 ) {
	draw_sprite_stretched( spr_go, 0, 0, 0, window_get_width(), window_get_height() );
}