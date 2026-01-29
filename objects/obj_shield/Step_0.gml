if (global.hp >= 1){
x = obj_player.x
y = obj_player.y
timer++;


	if (image_index <= 1 && image_speed <= 0){
		
		timer = 0;
		global.shieldon = 0;
		instance_destroy(self);
	}
}
else (instance_destroy(self));