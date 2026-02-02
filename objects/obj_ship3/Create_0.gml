// Inherit the parent event
event_inherited();

#region Vars
hp = 5;
states = 0; 
charge = 0;
positionl = 0;
timeout = 0;
#endregion
dies = function (){
	if (hp <= 0){
		die(obj_exship1);
		drop();
	}
}

smachine = function (){
	switch (states){
		//starts in 0, move down and go to state 1
		case 0:
		{
			if (y <150){
				y++;
			}
			else {
				states = 1;
			}
		}	
		break;
		//charge, shoot, go to 2
		case 1:
		{
			charge++
			timeout++;
			if (charge >= 160){
			 instance_create_layer(x, y, "enemies", obj_eshoot3l);
			 charge = 0;
			 positionl = 0;
			 if (timeout >= 170){
				 timeout = 0;
				 states = 2;
			 }
			}
		}
		break;
		case 2:
		{
			 charge = 0;
			if (positionl = 0 && y >= 50){
			y--;
			}
			if (positionl = 0 && y < 50) {
				positionl = 1;	
			}
			if (positionl = 1 && y <= 150){
			y++;
			states = 0;
			}
			
			

		}
		break;
			
		
}
}