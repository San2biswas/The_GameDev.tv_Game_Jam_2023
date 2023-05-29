function scr_control(){

// mouse control

mbl = mouse_check_button_pressed(mb_left);
mbr = mouse_check_button_pressed(mb_right);
mbm = mouse_check_button_pressed(mb_middle);


// mouse hover

mblh = mouse_check_button(mb_left);
mbrh = mouse_check_button(mb_right);
mbmh = mouse_check_button(mb_middle);


// keyboard controls

key_leftA	= keyboard_check_pressed(vk_left);
key_rightA	= keyboard_check_pressed(vk_right);
key_upA		= keyboard_check_pressed(vk_up);
key_downA	= keyboard_check_pressed(vk_down);

key_escape	= keyboard_check_pressed(vk_escape);
key_q		= keyboard_check_pressed(ord("Q"));
key_e		= keyboard_check_pressed(ord("E"));
key_r		= keyboard_check_pressed(ord("R"));
key_temp	= keyboard_check_pressed(ord("T"));


}