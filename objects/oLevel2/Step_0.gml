xpos = (camera_get_view_x(cam2)+ (display_get_gui_width()));

#region //Cutscene Animation
/*if(global.runCS2 == true)
{
	/*if(doOnce2)
	{
		instance_create_layer(xpos, oPlayer.y,layer,oKnight);
		doOnce2 = false;
	}
	with(oPlayer) {sprite_index = sPlayer;}
	with(oKnight) 
	{
		x -= walksp;
		if(distance_to_object(oPlayer) <= TEXT_DISTANCE*2)
		{
			walksp = 0;
			other.executeText2 = true;
		}
	}	
	oKnight.image_xscale = -1;
	executeText2 = true;
}*/

if(global.runCS2_2 == true)
{
	if(doOnce2_2)
	{
		instance_create_layer(oPlayer.x-700, oPlayer.y,"Player",oJanetSr);
		doOnce2_2 = false;
	}
	//with(oPlayer) {sprite_index = sPlayer;}
	with(oJanetSr) 
	{
		x += walksp;
		if(distance_to_object(oPlayer) <= TEXT_DISTANCE*2)
		{
			walksp = 0;
			other.executeText2_2 = true;
			
		}
	}	
}
#endregion

#region//Cutscene Dialogue Execution
if(executeText2_2)
{
	if(textBoxCreated2 < text_count) //Runs through for 0, then 1, then ... until we reach text_count, which in this case is 2 (so anything less than 2) and then creates the corresponding text box
	//If we've reached text_count (2 in this case), we execute the ELSE function
	{
		
		NewTextBox(ds_list_find_value(textArray2_2,textBoxCreated2));
		
		if (oJanetSr.isWalking && textBoxCreated2 == 0)
			{ 
				oJanetSr.isWalking = false;
			}
		if(mouse_check_button_pressed(mb_left))
		{
			textBoxCreated2 += 1;
			
			with(oText){instance_destroy();}
		}
	}
	else //And fade out / move on to the next room
	{
		instance_create_layer(0,0,layer,oFadeOut);
		instance_destroy();
	}
}
#endregion
