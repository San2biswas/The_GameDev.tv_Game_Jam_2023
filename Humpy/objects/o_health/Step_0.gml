/// @descr health pick up and blink

#region // health pick up

if place_meeting( x, y, o_player_p1 )
{
	instance_destroy(self);
	global.pHealth = global.pHealth + 1;
	//audio_play_sound( snd_healthDrink, 100, 0);	// play sound
}

#endregion // health pick up -X-


#region // heart blink aniamtion

healtAnim ++;
if healtAnim > 359 healtAnim = 0;
image_blend = make_color_hsv( 0, 0, 255 * (( sin(healtAnim/10) + 3)/3));

#endregion // heart blink aniamtion -X-

