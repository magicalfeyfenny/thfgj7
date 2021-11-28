scale = 1 + global.score_current * 0.005;

if ( y < BOUNDARY_BOTTOM ) {
	vspeed += GRAVITY;
}
if ( y >= BOUNDARY_BOTTOM && (state == STATE_FALL || state == STATE_NEUTRAL) ) {
	y = BOUNDARY_BOTTOM;
	vspeed = -vspeed;
	state = STATE_NEUTRAL;
}	
if ( vspeed > 0 ) {
	state = STATE_FALL;
}

if ( x > BOUNDARY_RIGHT ) {
	x = BOUNDARY_RIGHT;
	hspeed = -hspeed;
}
if (x < BOUNDARY_LEFT ) {
	x = BOUNDARY_LEFT;
	hspeed = -hspeed;
}
	

approach_timer -= 1;
if ( approach_timer == 0 && phase == PHASE_APPROACH ) {
	phase = PHASE_ACTIVE;
	active_timer = 3600;
	audio_play_sound( mus_myon, 0, true );
	motion_set(random(360), 6 );
}

active_timer -= 1;
if ( active_timer == 0 && phase == PHASE_ACTIVE ) {
	speed = 0;
	phase = PHASE_WHEN;
	when_timer = 600;
	instance_create_layer( x, y - 30, "objects", obj_when );
	audio_play_sound( snd_when, 0, false );
}

when_timer -= 1;
if ( when_timer == 0 && phase == PHASE_WHEN ) {
	if ( global.score_current <= 0 ) {
		phase = PHASE_TOOMUCH;
		toomuch_timer = 100;
	}
	if ( global.score_current > 0 ) {
		phase = PHASE_STRONG;
		strong_timer = 100;
	}
}

toomuch_timer -= 1;
if ( toomuch_timer == 0 && phase == PHASE_TOOMUCH ) {
	room_goto(rm_badend);
}

strong_timer -= 1;
if ( strong_timer == 0 && phase == PHASE_STRONG ) {
	room_goto(rm_goodend);
}

