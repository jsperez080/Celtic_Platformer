/// @desc Display Text if in range and button pressed
#region//Transfer Text
//If player is in range and text has not been displayed allow player to see text.
if(point_in_circle(oPlayer.x,oPlayer.y,x,y,TEXT_DISTANCE)) &&(!hasRun)
{
	//Display text if player presses rmb.
	if(mouse_check_button_pressed(mb_left))
	{
		
		global.hasControl = false;
		CreateTextForBox();
	}
}
#endregion

//Float Collectible
y = ystart + sin(get_timer()/500000)*6;