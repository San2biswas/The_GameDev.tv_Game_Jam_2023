function scr_shaded(){

// shaded

instance_destroy(o_player_p1);
instance_create_layer( x, y, "lr_player", o_player_p1 );
instance_destroy(o_player_p2);
instance_destroy(o_placeHolder);

o_box.sprite_index		= s_box;
o_pickup.sprite_index	= s_souls;
o_health.sprite_index	= s_health;
o_enemy.sprite_index	= s_enemy;
layer_set_visible("lr_fx_spirit1", false);
shd = 0;
mp_linear_path( pPath, mbX, mbY, 5, 0 );
o_player_icon.image_index = 0;

}