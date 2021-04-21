/// @description Insert description here
// You can write your code in this editor
xpos = (camera_get_view_x(cam)+ (display_get_gui_width()));

#region //Cutscene Animation
if(global.runCS)
{
	if(doOnce)
	{
		instance_create_layer(xpos, oPlayer.y,layer,oTamLin);
		doOnce = false;
	}
	with(oPlayer) {sprite_index = sPlayer;}
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
		oTamLin.isWalking = false;
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
	else if(textBoxCreated == 12)
	{
		instance_create_layer(0,0,layer,oFadeOut);
		instance_destroy();
	}
}
#endregion
