/// @descr health update

// Inherit the parent event
event_inherited();


if place_meeting( x, y, o_enemy )
{
	global.pHealth = global.pHealth - 0.02;
}

if global.pHealth > 5 global.pHealth = 5;
if global.pHealth < 0 global.pHealth = 0;
if global.pHealth == 0
{
	draw_text( (room_width/2), (room_height/2) - 120, "Let's Try Again !" )
	instance_create_depth( (room_width/2), 200, 100, o_game_restart );
	instance_create_depth( (room_width/2), 280, 100, o_game_quit );
}


//if place_meeting( x, y, o_health ) audio_play_sound( snd_healthDrink, 1, 0);	// play sound
//if place_meeting( x, y, o_pickup ) audio_play_sound( snd_pickup1, 1, 0);	// play sound
