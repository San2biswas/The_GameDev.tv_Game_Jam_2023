/// @descr soul pickup


#region // soul pickup

if place_meeting( x, y, o_player_p1 )
{
	instance_destroy(self);
	global.soulPickUp ++;
	instance_create_layer( irandom_range( 40, 600), irandom_range( 40, 320), "lr_env", o_pickup );
	if place_meeting( x, y, o_collision )
	{
		instance_destroy(self);
		instance_create_layer( irandom_range( 40, 600), irandom_range( 40, 320), "lr_env", o_pickup );
	}
}

#endregion // soul pickup -X-

