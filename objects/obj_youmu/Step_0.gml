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
	if ( _prevstate == STATE_FALL || _prevstate == STATE_JUMP ) {
		state = _prevstate;
	} else {
		y = BOUNDARY_BOTTOM;
		if (hspeed == 0) {
			state = STATE_NEUTRAL;
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

