if place_meeting( x, y, o_player_p1 )
{
	instance_destroy(self);
	global.pHealth = global.pHealth + 1;
}

// animation

healtAnim ++;
if healtAnim > 359 healtAnim = 0;
image_blend = make_color_hsv( 0, 0, 255 * (( sin(healtAnim/10) + 3)/3));

