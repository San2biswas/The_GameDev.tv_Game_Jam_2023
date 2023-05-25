/// @descr player event

depth = -bbox_bottom;

#region // import script

scr_control();


#endregion // import script -X-


#region // pathfinder

mbX = mouse_x;
mbY = mouse_y;

pPath = path_add();
mp_linear_path( pPath, mbX, mbY, 5, 0 );
if mbl path_start( pPath, 5, path_action_stop, 1 );


#endregion // pathfinder -X-


#region // dimension change

if key_q
{
	o_tree.sprite_index = s_tree_shadeless;
}


if key_e
{
	o_tree.sprite_index = s_tree;
}

#endregion // dimension change -X-



