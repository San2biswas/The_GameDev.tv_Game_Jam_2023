/// @descr enemy pathfinder and wave


#region // wave generate

global.enemyWave= global.enemyWave + 0.0001;
if global.enemyWave > 5.90 global.enemyWave = 5.90;


if frac(global.enemyWave) == 0.03
{
	repeat (floor(global.enemyWave))
	{
		instance_create_layer( irandom_range( 40, 600), irandom_range( 40, 320), "lr_enemy", o_enemy );
		instance_create_layer( irandom_range( 60, 580), irandom_range( 40, 320), "lr_env", o_health );
	}
}

#endregion // wave generate -X-


#region // enemy pathfinder

ePath = path_add();

#region // follow placeholder if exist

if instance_exists( o_placeHolder)
{
	mp_potential_path( ePath, o_placeHolder.x, o_placeHolder.y, 2, 2, 0 );
}
else
{
	mp_potential_path( ePath, o_player_p1.x, o_player_p1.y, 2, 2, 0 );
}

#endregion // follow placeholder if exist -X-

if global.enemyWave == 5.90
{
	path_start( ePath, floor(global.enemyWave) * 0, path_action_stop, 1 );
}
else
{
	path_start( ePath, floor(global.enemyWave), path_action_stop, 1 );
}


#endregion // enemy pathfinder -X-


#region // collision fix

if place_meeting( x, y, o_box )
{
	x = x + 1;
	y = y + 1;
}

if place_meeting( x, y, o_enemy )
{
	x = x + irandom_range(-1, 1);
	y = y + irandom_range(-1, 1);
}

if place_meeting( x, y, o_health )
{
	x = x + irandom_range(-1, 1);
	y = y + irandom_range(-1, 1);
}

if place_meeting( x, y, o_pickup )
{
	x = x + irandom_range(-1, 1);
	y = y + irandom_range(-1, 1);
}


#endregion // collision fix -X-


#region // depth sorting

with (all)
{
	depth = -bbox_bottom
}

#endregion // depth sorting -X-

