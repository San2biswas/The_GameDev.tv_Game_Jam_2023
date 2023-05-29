
if instance_exists(o_player_p2)
{
	image_blend = make_color_hsv( 0, 0, (o_player_p2.p2Timer/1.2) + 150)
}
else
{
	image_blend = c_white;
}
