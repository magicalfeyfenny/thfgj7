if ( fade_in_time <= 0 ) {
	start = scr_input_get( INPUT_ANY );
	if ( start ) {
		//room_goto_next();
	}
}

image_xscale = 1 / max(1, fade_in_time );
image_yscale = 1 / max(1, fade_in_time );

image_angle = 10 * dsin( fade_in_time );

fade_in_time -= 1;

part_particles_create( global.partsys_bg, random( 640 ), -50, global.parttype[ PART_CHERRYRAIN ], 1 );