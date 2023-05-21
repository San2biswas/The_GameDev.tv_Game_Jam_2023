/// @descr player event

depth = -bbox_bottom;

#region // import script

scr_control();


#endregion // import script -X-


#region // pathfinder

mbX = mouse_x;
mbY = mouse_y;

pPath = path_add();
mp_linear_path( pPath, mbX, mbY, 5, 1 );
if mbl path_start( pPath, 5, path_action_stop, 1 );


#endregion // pathfinder -X-


