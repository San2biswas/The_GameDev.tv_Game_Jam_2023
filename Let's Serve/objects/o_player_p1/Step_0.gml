// Inherit the parent event
event_inherited();


if place_meeting( x, y, o_enemy )
{
	global.pHealth = global.pHealth - 0.02;
}

if global.pHealth > 5 global.pHealth = 5;
if global.pHealth < 0 global.pHealth = 0;
