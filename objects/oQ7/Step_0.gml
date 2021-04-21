
{
	if(countdown <= 0)
	{
		if((counter == 0) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
		{
			global.hasControl = false;
			NewTextBox("True or False");
			if(mouse_check_button_pressed(mb_left)) 
			{
				counter++; 
				with(oText) {instance_destroy();}
				//with(oTextQueued) {instance_destroy();}
			}
		}
		else if((counter == 1) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
		{
			NewTextBox("The Thistle is the national flower of Ireland: True or False?");
			if(mouse_check_button_pressed(mb_left)) 
			{
				counter++;
				with(oText) {instance_destroy();}
				with(oTextQueued) {instance_destroy();}
			}
		}
		else if((counter == 2) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
		{
			canGetAnswer = true;
			if(mouse_check_button_pressed(mb_left)) 
			{
				counter++;
				with(oText) {instance_destroy();}
				with(oTextQueued) {instance_destroy();}
			
		
			}
		}
	}
	countdown--;
}