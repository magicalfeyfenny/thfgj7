draw_sprite_stretched(spr_sky, 0, 0, 0, view_get_wport(view_current), view_get_yport(view_current) );

for ( var i = 0; i < 3; i++ ) {
	draw_sprite( spr_sparkle, 0, (-960 + (640 * i) + (obj_youmu.x * 0.1) ), 0 + (BOUNDARY_BOTTOM - obj_youmu.y) / 50 );
	draw_sprite( spr_cherryfield, 0, (-960 + (640 * i) + (obj_youmu.x * 0.7) ), 0 + ( BOUNDARY_BOTTOM - obj_youmu.y ) / 20  );
}
draw_sprite_ext( spr_saigyouayakashi_trunk, 0, obj_youmu.x * (0.4), 24 + ((BOUNDARY_BOTTOM - obj_youmu.y)  / 40 ), .6, .6, 0, c_white, 1 );
draw_sprite_ext( spr_saigyouayakashi_cherry, 0, obj_youmu.x * (0.45), 24 + ((BOUNDARY_BOTTOM - obj_youmu.y)  / 35 ), .6, .6, 0, c_white, 1 );