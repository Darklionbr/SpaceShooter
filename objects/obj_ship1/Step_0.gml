stimer++;
if (stimer >= 120) {
instance_create_layer(x, y, "enemies", obj_eshoot1);
stimer = 0;
}

if (!in_sequence && seqspawn){
	instance_destroy(self);
}