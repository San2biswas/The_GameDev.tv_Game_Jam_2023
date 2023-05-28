var _hx = x - 16;	// healthbar possition x
var _hy = y - 32;	// healthbar possition y


draw_text( x, y - 64, global.pHealth);	// health debug
draw_set_halign(fa_left);
draw_rectangle( _hx - 2, _hy - 2, _hx + 32, _hy + 4, 1);				// healthbar border
draw_set_color( make_color_hsv( 0, (255 - ((255/5) * global.pHealth )), 255) );	// health color change
draw_rectangle( _hx, _hy, _hx + global.pHealth * 6, _hy + 2, 0)			// healthbar

draw_set_color(c_white);
