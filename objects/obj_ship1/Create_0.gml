stimer = 0;
seqspawn = in_sequence;

drop = function(){
	var _chance = random (100);
	if (_chance >= 95) {
		instance_create_layer(x, y, "instances", obj_pwup1);
	}
}