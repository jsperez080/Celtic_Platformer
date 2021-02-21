/// @desc Display Text if in range and button pressed

//If player is in range and text has not been displayed allow player to see text.
if(point_in_circle(oPlayer.x,oPlayer.y,x,y,TEXT_DISTANCE)) &&(!hasRun)
{
	//Display text if player presses rmb.
	if(mouse_check_button_pressed(mb_right))
	{
		var _finishedTextBoxes = 0;
		for(var i = 0; i < ds_list_size(textList); i++)
		{
			NewTextBox(ds_list_find_value(textList,i));//Remove next in list to display
			_finishedTextBoxes++;
		}
		
		if(_finishedTextBoxes >= ds_list_size(textList))//If all elements have been displayed
		{
			hasRun = true;
		}
	}
}

//Destroy instance after player finishes reading
if((keyboard_check_pressed(vk_anykey)) || (mouse_check_button_pressed(mb_right))) && (hasRun)
{
	instance_destroy();
}