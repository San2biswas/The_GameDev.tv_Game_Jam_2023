function scr_shadeless(){

// shadeless

instance_destroy(o_player_p2);
instance_create_layer( x, y, "lr_player", o_player_p2 );
instance_destroy(o_player_p1);
if !instance_exists(o_placeHolder)	instance_create_layer( x, y, "lr_player", o_placeHolder );

o_box.sprite_index		= s_box_shadeless;
o_pickup.sprite_index	= s_apple_shadeless;
o_enemy.sprite_index	= s_enemy_shadeless;
layer_set_visible("lr_fx_spirit1", true);
shd = 1;
mp_linear_path( pPath, mbX, mbY, 5, 1 );


}