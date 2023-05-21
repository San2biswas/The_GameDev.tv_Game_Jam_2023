/// @desc defaults at game start

#region // text defaults

draw_set_font(fnt_default);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


#endregion // text defaults -X-


#region // depth sorting

with (all)
{
	depth = -bbox_bottom
}

#endregion // depth sorting -X-
