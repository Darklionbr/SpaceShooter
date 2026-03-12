// Inherit the parent event
event_inherited();

#region Vars
hp = 5;
states = 0; 
charge = 0;
positionl = 0;
timeout = 0;
triples = 0;
#endregion

dies = function (){
	if (hp <= 0){
		die(obj_exship1);
		drop();
	}
}

smachine = function (){
	switch (states){
		//move down
		case 0:
		{
			if (y <150){
				y++;
			}
			else {
				states = irandom_range(1, 3);
			}
		}	
		break;
		//charged shoot
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
		//triple shoot
		case 3:
		{
		stimer++;
			 if (stimer >= 60){
			 var s0 = instance_create_layer(x, y, "enemies", obj_eshoot3r);
			 with(s0){
				 direction = 250;
			 }
			  var s1 = instance_create_layer(x, y, "enemies", obj_eshoot3r);
			 with(s1){
				 direction = 270;
			 }
			  var s2 = instance_create_layer(x, y, "enemies", obj_eshoot3r);
			 with(s2){
				 direction = 290;
			 }
			 stimer = 0;
			 triples++;
		 }
		 if (triples = 3){
			 states = 2;
			 triples = 0;
			 positionl = 0;
		 }
		}
		break;
			
		
}
}