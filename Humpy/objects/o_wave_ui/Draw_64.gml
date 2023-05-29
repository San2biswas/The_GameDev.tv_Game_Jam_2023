#region // settings before wave message

draw_set_font(fnt_wave);
//draw_set_color(c_yellow);
draw_set_halign(fa_middle);


#endregion // settings before wave message -X-


#region // wave message

if frac(global.enemyWave) > 0.01 && frac(global.enemyWave) < 0.06
{
	draw_text( (room_width/2), (room_height/2) - 120, "Wave " + string(floor(global.enemyWave)) )
}

#endregion // wave message -X-


#region // win message

if global.enemyWave == 5.9
{
	draw_text( (room_width/2), (room_height/2) - 120, "You Win" )
	instance_create_depth( (room_width/2), 200, 100, o_game_restart );
	instance_create_depth( (room_width/2), 280, 100, o_game_quit );
}

#endregion // win message -X-


#region // die message

if global.pHealth == 0
{
	draw_text( (room_width/2), (room_height/2) - 120, "Let's try again!" )
}

#endregion // die message -X-


#region // settings after wave message

draw_set_font(fnt_default);
draw_set_color(c_white);
draw_set_halign(fa_left);

#endregion // settings after wave message -X-

