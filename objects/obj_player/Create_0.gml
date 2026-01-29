#region Vars
global.shieldon = 0;
global.hp = 3;
global.sp = 3;
stimer = 15;
pwup = 0;
#endregion

movement = function () {
	
	var  _left, _right, _up, _down, _xspd, _yspd;
	_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

	_xspd = _right - _left;
	_yspd = _down - _up;
	
	x = clamp(x, sprite_width/2, room_width - sprite_width/2);
	y = clamp(y, sprite_height/2, room_height - sprite_height/2);
	x += _xspd* 2;
	y += _yspd* 2;
}

shoot = function () {
	
	var _shoot;
	_shoot = keyboard_check(vk_space);
	
	if (_shoot = 1 && stimer > 14) {
		
		if (pwup = 0) {
		instance_create_layer(x, y, "enemies", obj_pshoot);
		stimer = 0;
		}
		
		if (pwup = 1) {
		instance_create_layer(x - 8, y, "enemies", obj_pshoot);
		instance_create_layer(x + 8, y, "enemies", obj_pshoot);
		stimer = 0;
		}
		
		if (pwup = 2) {
		instance_create_layer(x, y - 5, "enemies", obj_pshoot);
		instance_create_layer(x - 10, y, "enemies", obj_pshoot);
		instance_create_layer(x + 10, y, "enemies", obj_pshoot);
		stimer = 0;
		}
	}
}
	
shield = function () {
var _shield;
_shield = keyboard_check_pressed(ord("E"));

if (_shield = 1 && global.shieldon = 0 && global.hp >= 1 && global.sp > 0) {
	instance_create_layer(x, y, "up", obj_shield);
	global.sp--;

}
	
}
	
damage = function () {
	if (global.shieldon = 0){
	global.hp--
	instance_create_layer(x, y, "up", obj_shield);
	}
}
	
pdie = function () {
	if (global.hp <= 0){
		die(obj_pdie);
	}
	
}