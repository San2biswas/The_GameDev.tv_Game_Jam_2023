// wave update

global.enemyWave= global.enemyWave + 0.0001;
if global.enemyWave > 5 global.enemyWave = 5;

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

