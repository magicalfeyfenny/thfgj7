if ( state == STATE_NEUTRAL || state == STATE_FORWARD || state == STATE_BACKSTEP || 
	(state == STATE_JUMP && jumptime > 0) || (doublejump == false && jumptime == 0) ) {
	var _jump = scr_input_get( INPUT_UP );
	if ( _jump ) {
		jumptime += 1;
		if ( jumptime < JUMP_TIME_MAX ) {
			state = STATE_JUMP;
			vspeed = JUMP_SPEED;
			vspeed -= (0.1 * jumptime);
		}
	}
	if ( prevjump && !_jump ) {
		jumptime = 0;
		doublejump = !doublejump;
	}
	prevjump = _jump;
}

if ( state == STATE_JUMP ) {
	var _fastfall = scr_input_get( INPUT_DOWN );
	if ( _fastfall ) {
		state = STATE_FALL;
		vspeed = -JUMP_SPEED;
	}
}

if ( state == STATE_NEUTRAL || state == STATE_CROUCH ) {
	var _crouch = scr_input_get( INPUT_DOWN );
	if ( _crouch ) {
		state = STATE_CROUCH;
	}
	if (prevcrouch && !_crouch ) {
		state = STATE_NEUTRAL;
	}
	prevcrouch = _crouch;
}

if ( state != STATE_CROUCH && state != STATE_BACKSTEP ) {
	var _forwardleft = scr_input_get( INPUT_LEFT );
	var _forwardright = scr_input_get( INPUT_RIGHT );
	var _prevstate = state;
	if ( _forwardleft == _forwardright ) {
		_forwardleft = false;
		_forwardright = false;
		hspeed = 0;
	}
	if ( _forwardleft ) {
		facedir = LEFT;
		hspeed = facedir * WALK_SPEED;
		state = STATE_FORWARD;
	}
	if ( _forwardright ) {
		facedir = RIGHT;
		hspeed = facedir * WALK_SPEED;
		state = STATE_FORWARD;
	}
	if ( x < BOUNDARY_LEFT ) {
		x = BOUNDARY_LEFT;
		hspeed = 0;
	}
	if (x > BOUNDARY_RIGHT ) {
		x = BOUNDARY_RIGHT;
		hspeed = 0;
	}
	
	if ( _prevstate == STATE_FALL || _prevstate == STATE_JUMP ) {
		state = _prevstate;
	} else {
		y = BOUNDARY_BOTTOM;	
		if (hspeed == 0) {
			state = STATE_NEUTRAL;
		}
	}
}

canshoot -= 1;
if ( canshoot <= 0 ) {
	var _shoot = scr_input_get( INPUT_SHOT_LEFT );
	if ( _shoot ) {
		if ( obj_mystia.phase == PHASE_ACTIVE ) {
			audio_play_sound( snd_pew, -1, false );
			var _shot = instance_create_layer( x, y - 30, "objects", obj_shot );
			with ( _shot ) {
				speed = 15;
				direction = 90 + ( 90 * -other.facedir );
				image_angle = direction;
			}
			canshoot = 4;
		}
		else {
			if ( obj_mystia.phase == PHASE_WHEN ) {
				audio_play_sound( snd_pew, -1, false );
				var _shot = instance_create_layer( x, y - 30, "objects", obj_shot_toomuch );
				with ( _shot ) {
					speed = 15;
					direction = 90 + ( 90 * -other.facedir );
					image_angle = direction;
				}
				canshoot = 4;
			}
		}
	}
}
	

if ( y < BOUNDARY_BOTTOM ) {
	vspeed += GRAVITY;
}
if ( y >= BOUNDARY_BOTTOM && (state == STATE_FALL || state == STATE_NEUTRAL) ) {
	y = BOUNDARY_BOTTOM;
	vspeed = 0;
	state = STATE_NEUTRAL;
	doublejump = true;
	jumptime = 0;
}
	
if ( vspeed > 0 ) {
	state = STATE_FALL;
}


