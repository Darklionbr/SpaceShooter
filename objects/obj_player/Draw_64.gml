
var _gheight, _hpdiv, _spdiv;
_gheight = display_get_gui_height();
_hpdiv = 0;
_spdiv = 0;

repeat (global.hp){
	draw_sprite_ext(spr_lifegui, 0,20 + _hpdiv, _gheight - 20, 1, 1, 0, c_white, 1);
	_hpdiv += 25;
}

repeat (global.sp){
	draw_sprite_ext(spr_shieldgui, 0,20 + _spdiv, _gheight - 43, 1, 1, 0, c_white, 1);
	_spdiv += 25;
}