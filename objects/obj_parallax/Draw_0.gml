draw_sprite_stretched(spr_sky, 0, 0, 0, view_get_wport(view_current), view_get_yport(view_current) );

for ( var i = 0; i < 3; i++ ) {
	draw_sprite( spr_sparkle, 0, -((-960 + (640 * i) + (obj_youmu.x * 0.1) )), 0 + (BOUNDARY_BOTTOM - obj_youmu.y) / 50);
	draw_sprite_ext( spr_cherryfield, 0, -(((-960 + (640 * i))*.75 + (obj_youmu.x * 0.75) )), 48 + ( BOUNDARY_BOTTOM - obj_youmu.y ) / 20, .75, .75, 0, c_white, 1  );
	draw_sprite_ext( spr_cherryfloor, 0, -(((-960 + (640 * i))*.95 + (obj_youmu.x * 0.95) )), 20 + ( BOUNDARY_BOTTOM - obj_youmu.y ) / 15, .95, .95, 0, c_white, 1 );
}
draw_sprite_ext( spr_saigyouayakashi_trunk, 0, 100 -obj_youmu.x * (0.4), 32 + ((BOUNDARY_BOTTOM - obj_youmu.y) / 40 ), .6, .6, 0, c_white, 1 );
draw_sprite_ext( spr_saigyouayakashi_cherry, 0, 110 -obj_youmu.x * (0.45), 32 + ((BOUNDARY_BOTTOM - obj_youmu.y) / 35 ), .6, .6, 0, c_white, 1 );