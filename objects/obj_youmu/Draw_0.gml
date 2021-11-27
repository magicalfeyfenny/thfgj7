var _shadow_scale = y / BOUNDARY_BOTTOM;
draw_sprite_ext( spr_shadow, 0, x, BOUNDARY_BOTTOM, _shadow_scale, _shadow_scale, 0, c_white, .75 );

image_xscale = facedir;
draw_self();

draw_text( 5, 5, "State: " );
var _state = "";
switch ( state ) {
	case STATE_NEUTRAL: {
		_state = "Neutral";
		break;
	}
	case STATE_JUMP: {
		_state = "Jump";
		break;
	}
	case STATE_FALL: {
		_state = "Fall";
		break;
	}
	case STATE_FORWARD: {
		_state = "Forward";
		break;
	}
	case STATE_BACKSTEP: {
		_state = "Backstep";
		break;
	}
	case STATE_CROUCH: {
		_state = "Crouch";
		break;
	}
	default: {
		break;
	}
}
draw_text( 40, 5, _state );
