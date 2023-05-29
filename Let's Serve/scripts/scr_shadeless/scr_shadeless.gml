function scr_shadeless(){

// shadeless

instance_destroy(o_player_p2);
instance_create_layer( x, y, "lr_player", o_player_p2 );
instance_destroy(o_player_p1);
if !instance_exists(o_placeHolder)	instance_create_layer( x, y, "lr_player", o_placeHolder );

o_box.sprite_index		= s_box_shadeless;
o_pickup.sprite_index	= s_souls_shadeless;
o_health.sprite_index	= s_health_shadeless;
o_enemy.sprite_index	= s_enemy_shadeless;
o_tv.sprite_index		= s_tv_ns;
o_table.sprite_index	= s_table_ns;
o_vase.sprite_index		= s_vase_ns;
o_ball.sprite_index		= s_ball_ns;
o_fridge.sprite_index	= s_fridge_ns;
o_lamp.sprite_index		= s_lamp_ns;

layer_set_visible("lr_fx_spirit1", true);
shd = 1;
mp_linear_path( pPath, mbX, mbY, 5, 1 );
o_player_icon.image_index = 1;

}