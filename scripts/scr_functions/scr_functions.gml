
function die(_particle = obj_explosionp) {
	instance_create_layer(x, y, "particles", _particle);
	instance_destroy(self);
}