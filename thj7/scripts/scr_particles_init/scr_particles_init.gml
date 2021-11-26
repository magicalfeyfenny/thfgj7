function scr_particles_init(){
	global.partsys_bg = part_system_create_layer( "bg_particles", true );
	global.partsys_fg = part_system_create_layer( "fg_particles", true );
	
	global.parttype[ PART_CHERRYRAIN ] = part_type_create();
		part_type_sprite(		global.parttype[ PART_CHERRYRAIN ], spr_particle_cherry, false, false, false );
		part_type_size(			global.parttype[ PART_CHERRYRAIN ],	.25, .75, 0, 0 );
		part_type_speed(		global.parttype[ PART_CHERRYRAIN ], .01, .02, -.005, 0 );
		part_type_orientation(	global.parttype[ PART_CHERRYRAIN ], 0, 359, .5, 0, true );
		part_type_direction(	global.parttype[ PART_CHERRYRAIN ], 45, 135, 0, 0 );
		part_type_gravity(		global.parttype[ PART_CHERRYRAIN ], .008, 270 );
		part_type_life(			global.parttype[ PART_CHERRYRAIN ] , 500, 1500 );
		part_type_alpha3(		global.parttype[ PART_CHERRYRAIN ], .95, .75, 0 );
}