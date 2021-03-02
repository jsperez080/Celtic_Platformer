/// @desc Display Text if in range and button pressed

#region//Transfer Text
//If player is in range and text has not been displayed allow player to see text.
if(point_in_circle(oPlayer.x,oPlayer.y,x,y,TEXT_DISTANCE)) &&(!hasRun)
{
	//Display text if player presses rmb.
	if(mouse_check_button_pressed(mb_right))
	{
		
		global.hasControl = false;
		for(var i = 0; i < ds_list_size(textList); i++)
		{
			NewTextBox(ds_list_find_value(textList,i));//Remove next in list to display
		}
				
		if(counter >= ds_list_size(textList))//If all elements have been displayed
		{
			hasRun = true;
		}
		
		counter++;
		if((hasRun == true))
		{
			//Clear all lists and destroy all Text objects
			ds_list_clear(textList);
			with(oText) {instance_destroy();}
			with(oTextQueued) {instance_destroy();}
			instance_destroy();
		}
		
	}
}
#endregion

//Float Collectible
y = ystart + sin(get_timer()/500000)*6;