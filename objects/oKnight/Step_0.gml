if(!instance_exists(oCollectible))
{
	if(point_in_circle(oPlayer.x, oPlayer.y, x, y, TEXT_DISTANCE))
	{
		global.hasControl = false;
		if(textBoxCreated2 == 0)
		{
			NewTextBox(ds_list_find_value(textArray2, textBoxCreated2));
			if(mouse_check_button_pressed(mb_left))
			{
				textBoxCreated2 += 1;
				with(oText) {instance_destroy();}
			}
		}
		else if(textBoxCreated2 == 1)
		{
			instance_create_layer(0,0,layer,oFadeOut);
		}
	}
}