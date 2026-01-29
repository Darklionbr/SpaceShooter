// Inherit the parent event
event_inherited();

#region Vars
hp = 5;
states = 0; 
charge = 0;
#endregion
dies = function (){
	if (hp <= 0){
		die(obj_exship1);
		drop();
	}
}

smachine = function (){
	switch (states){
		case 0:
		{
			if (y <150){
				y++;
			}
			else {
				states = 1;
			}
		}	
		case 1:
		{
			charge++
			if (charge >= 160){
			 instance_create_layer(x, y, "enemies", obj_eshoot3l);
			 charge = 0;
			}
			
		}
}
}