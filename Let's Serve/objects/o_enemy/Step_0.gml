/// @descr enemy pathfinder and wave


#region // wave generate

global.enemyWave= global.enemyWave + 0.0001;
if global.enemyWave > 5.50 global.enemyWave = 5.50;


if frac(global.enemyWave) == 0.03
{
	repeat (floor(global.enemyWave))
	{
		instance_create_layer( irandom_range( 40, 600), irandom_range( 40, 320), "lr_enemy", o_enemy );
	}
}

#endregion // wave generate -X-


#region // enemy pathfinder

ePath = path_add();

#region // follow placeholder if exist

if instance_exists( o_placeHolder)
{
	mp_potential_path( ePath, o_placeHolder.x, o_placeHolder.y, 2, 2, 1 );
}
else
{
	mp_potential_path( ePath, o_player_p1.x, o_player_p1.y, 2, 2, 1 );
}

#endregion // follow placeholder if exist -X-

path_start( ePath, floor(global.enemyWave), path_action_stop, 1 );

#endregion // enemy pathfinder -X-

