/// @function							scr_initialize();

#region //define global constants
	//general options
	#macro WINDOW_BASE_WIDTH 640
	#macro WINDOW_BASE_HEIGHT 360
	#macro VIEW_MULTIPLY_360 1
	#macro VIEW_MULTIPLY_720 2
	#macro VIEW_MULTIPLY_1080 3
	#macro VIEW_MULTIPLY_1440 4
	#macro VIEW_MULTIPLY_2160 6
	#macro BOUNDARY_LEFT 30
	#macro BOUNDARY_RIGHT 610
	#macro BOUNDARY_TOP 60
	#macro BOUNDARY_BOTTOM 320
	#macro LEFT -1
	#macro RIGHT 1
	#macro TOP -1
	#macro BOTTOM 1
	#macro CIRCLE 360
	#macro GRAVITY .2
	
	#macro OPTIONS_INPUT_TYPE "options_input"
	#macro OPTIONS_FULLSCREEN "options_full_toggle"
	#macro OPTIONS_FULLMULT "options_full_res"
	#macro OPTIONS_WINDOWMULT "options_window_res"
	
	//input options
	#macro INPUT_UP "input_up"
	#macro INPUT_DOWN "input_down"
	#macro INPUT_LEFT "input_left"
	#macro INPUT_RIGHT "input_right"
	#macro INPUT_SHOT_LEFT "input_shot_left"
	#macro INPUT_SHOT_RIGHT "input_shot_right"
	#macro INPUT_FOCUS "input_focus"
	#macro INPUT_BOMB "input_bomb"
	#macro INPUT_PAUSE "input_pause"
	#macro INPUT_ANY "input_any"
	
	//scoring options
	#macro SCORE_READ 0
	#macro SCORE_WRITE 1
	#macro SCORE_INIT 2
	#macro SCORE_ZERO 0
	
	#macro SCORE_HITS 1
	#macro SCORE_WHEN_HITS -1
	
	//particle systems
	#macro PART_CHERRYRAIN 0
	
	//player variables	
	#macro SPAWN_X 80
	#macro SPAWN_Y 180
	#macro METER_INIT 0
	#macro METER_COST 1
	#macro METER_MAX 300
	#macro WALK_SPEED 2
	#macro DASH_SPEED 5
	#macro JUMP_SPEED -4
	#macro JUMP_TIME_MAX 10
	#macro OPTION_DISTANCE 100
	
	#macro STATE_NEUTRAL 0
	#macro STATE_JUMP 1
	#macro STATE_FALL 2
	#macro STATE_FORWARD 3
	#macro STATE_BACKSTEP 4
	#macro STATE_CROUCH 5
	
	#macro SHOT_DELAY 3
	#macro SHOT_PLAYER_DAMAGE 5
	#macro SHOT_PLAYER_SPEED 20
	#macro SHOT_OPTION_DAMAGE 1
	#macro SHOT_OPTION_SPEED 20
	
	//boss variables	
	#macro MODE_APPROACH 0
	#macro MODE_CHAT 1
	#macro MODE_CHARGE 2
	#macro MODE_ACTIVE 3
	#macro BOSS_CHARGE_TIME 120
	#macro BOSS_APPROACH_TIME 30
	
#endregion

function scr_initialize() {
	randomize();
	scr_options_init();
	scr_input_init();
	scr_scores( SCORE_INIT );
	scr_particles_init();
}