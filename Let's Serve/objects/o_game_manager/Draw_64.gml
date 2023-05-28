/// @descr debug


// border

var  _lborder = 20;
var  _rborder = room_width - 20;
var  _tborder = 20;
var  _bborder = room_height - 20;


draw_text( _lborder, _tborder,		"fps : "		+ string( fps_real) );
draw_text( _lborder, _tborder + 20,	"x : "			+ string( o_player_master.x ) + "     " + "y : " + string( o_player_master.y ) );
draw_text( _lborder, _tborder + 40,	"direction : "	+ string( o_player_master.direction) );
draw_text( _lborder, _tborder + 60,	"heart : "		+ string( global.soulPickUp) );
draw_text( _lborder, _tborder + 80,	"wave : "		+ string( floor(global.enemyWave)) );

