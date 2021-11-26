/// @function							scr_initialize();

#region //define global constants
	#macro TEXT_LOADING -1
	#macro TEXT_TYPING 0
	#macro TEXT_READY 1
	#macro EMOTE_NEUTRAL 0
	#macro EMOTE_HAPPY 1
	#macro EMOTE_SAD 2
	#macro EMOTE_CONFUSED 3
	#macro EMOTE_ANGRY 4
	#macro EMOTE_OUCH 5
	#macro LEFT_ACTOR 0
	#macro RIGHT_ACTOR 1
	
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
	#macro BOUNDARY_BOTTOM 300
	
	#macro SPAWN_X 60
	#macro SPAWN_Y 180
	#macro LEFT -1
	#macro RIGHT 1
	#macro TOP -1
	#macro BOTTOM 1
	#macro LIVES_INIT 3
	#macro LIVES_MAX 5
	#macro BOMBS_INIT 3
	#macro BOMBS_MAX 5
	#macro HYPER_INIT 0
	#macro HYPER_COST 100
	#macro HYPER_MAX 300
	#macro FOCUS_SPEED 2
	#macro UNFOC_SPEED 5
	#macro DEATHBOMB_WINDOW 40
	#macro RESPAWN_TIMER 60
	#macro RESPAWN_INVULN 120
	
	#macro BOMB_DAMAGE_TICK 2
	#macro BOMB_DURATION_NORMAL 180
	#macro BOMB_DURATION_DEATHBOMB 360
	
	#macro HYPER_INACTIVE 0
	#macro HYPER_TIER_1 1
	#macro HYPER_TIER_2 2
	#macro HYPER_TIER_3 3
	#macro SHOT_SLIP -.02
	#macro CIRCLE 360
	
	#macro OPTION_FORWARD 100
	#macro OPTION_SIDE_UNFOC 100
	#macro OPTION_SIDE_FOCUS 20
	
	#macro SHOT_DELAY 3
	#macro SHOT_PLAYER_DAMAGE 5
	#macro SHOT_PLAYER_SPEED 20
	#macro SHOT_OPTION_DAMAGE 1
	#macro SHOT_OPTION_SPEED 20
	
	#macro PATTERN_STREAM 0
	#macro PATTERN_AIMED_WAVE 1
	#macro PATTERN_SHOTGUN 2
	#macro PATTERN_LANE 3
	#macro PATTERN_RANDOM_BURST 4
	#macro PATTERN_RING 5
	#macro PATTERN_RANDOM_RING 6
	#macro PATTERN_HORIZ_WALL 7
	#macro PATTERN_VERT_WALL 8
	#macro PATTERN_RANDOM_SPRAY 9
	#macro PATTERN_LANE_RING 10
	#macro PATTERN_SHOTGUN_RING 11
	#macro PATTERN_STREAM_RING 12
	
	#macro MODE_APPROACH 0
	#macro MODE_CHAT 1
	#macro MODE_CHARGE 2
	#macro MODE_ACTIVE 3
	#macro BOSS_CHARGE_TIME 120
	#macro BOSS_APPROACH_TIME 30
	
	#macro SCORE_READ 0
	#macro SCORE_WRITE 1
	#macro SCORE_INIT 2
	#macro SCORE_ZERO 0
	#macro SCORE_HITS 1
	#macro SCORE_WHEN_HITS -1
	
	#macro OPTIONS_INPUT_TYPE "options_input"
	#macro OPTIONS_FULLSCREEN "options_full_toggle"
	#macro OPTIONS_FULLMULT "options_full_res"
	#macro OPTIONS_WINDOWMULT "options_window_res"
	
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
	
	#macro PART_CHERRYRAIN 0
#endregion

function scr_initialize() {
	randomize();
	scr_options_init();
	scr_input_init();
	scr_scores( SCORE_INIT );
	scr_particles_init();
}