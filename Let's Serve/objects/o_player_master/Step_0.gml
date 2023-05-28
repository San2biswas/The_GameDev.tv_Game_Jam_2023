/// @descr player event

#region // import script

scr_control();


#endregion // import script -X-


depth = -bbox_bottom;
mbX = mouse_x;
mbY = mouse_y;


#region // pathfinder

pPath = path_add();
mp_linear_path( pPath, mbX, mbY, 5, shd );
if mbl path_start( pPath, 5, path_action_stop, 1 );


#region // player movement direction

if direction > 90 && direction < 270
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

#endregion // player movement direction -X-


#endregion // pathfinder -X-


#region // dimension change


if key_q // shadeless
{
	scr_shadeless();
}


if key_e // shadeed
{
	scr_shaded();
}


#endregion // dimension change -X-

