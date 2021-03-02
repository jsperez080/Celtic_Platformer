
#region //Cutscene Animation
if(global.runCS)
{
	if(doOnce)
	{
		instance_create_layer(display_get_gui_width(), oPlayer.y,layer,oTamLin);
		doOnce = false;
	}
	with(oTamLin) 
	{
		x -= walksp;
		if(distance_to_object(oPlayer) <= TEXT_DISTANCE*2)
		{
			walksp = 0;
			other.executeText = true;
		}
	}	
}
#endregion

#region//Cutscene Dialogue Execution
if(executeText)
{
	if(textBoxCreated == 0)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	
	else if(textBoxCreated == 1)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 2)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 3)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 4)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 5)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 6)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 7)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 8)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 9)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 10)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated == 11)
	{
		NewTextBox(ds_list_find_value(textArray,textBoxCreated));
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated += 1;
			with(oText){instance_destroy();}
		}
	}
	else if(textBoxCreated > ds_list_size(textArray))
	{
		instance_destroy();
	}
}
#endregion
