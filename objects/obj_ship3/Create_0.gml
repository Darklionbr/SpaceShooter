// Inherit the parent event
event_inherited();

hp = 5;

dies = function (){
	if (hp <= 0){
		die(obj_exship1);
		drop();
	}
}
