if place_meeting( x, y, o_cursor )
{
	image_index = 1;
	if mouse_check_button_pressed(mb_left)
	{
		game_restart();
	}
	
}
else
{
		image_index = 0;
}
