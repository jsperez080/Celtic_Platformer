
if((counter == 0) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
{
	//global.hasControl = false;
	NewTextBox("That's the prettiest flower I've ever seen! Two heads is certainly straing.");
	if(mouse_check_button_pressed(mb_left)) 
	{
		counter++; 
		with(oText) {instance_destroy();}
	}
}
else if((counter == 1) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
{
	NewTextBox("Then again, that's not the only straing thing that's happened in these woods.");
	if(mouse_check_button_pressed(mb_left)) 
	{
		counter++;
		with(oText) {instance_destroy();}
	}
}
else if((counter == 2) && (point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE)))
{
	canGetAnswer = true;
	if(mouse_check_button_pressed(mb_left)) 
	{
		counter++;
		with(oText) {instance_destroy();}
		
	}
}