/// @desc Display Text if in range and button pressed

if(point_in_circle(oPlayer.x,oPlayer.y,x,y,TEXT_DISTANCE)) && (!hasRun)
{
	if(mouse_check_button_pressed(mb_right))
	{	
		//Create text when player presses RMB
		with(instance_create_layer(x,y-TEXT_DISTANCE,layer,oText))
		{
			text = other.text;
			length = string_length(text);
		}
		hasRun = true;
	}
}

//Destroy instance after player finishes reading
if(keyboard_check_pressed(vk_anykey)) && (hasRun)
{
	instance_destroy();
}