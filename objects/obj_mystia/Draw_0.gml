var _shadow_scale = y / BOUNDARY_BOTTOM;
draw_sprite_ext( spr_shadow, 0, x, BOUNDARY_BOTTOM, _shadow_scale * scale, _shadow_scale * scale, 0, c_white, .75 );

image_xscale = facedir * scale;
image_yscale = scale;
draw_self();