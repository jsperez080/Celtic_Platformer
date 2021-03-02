// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneDialogue(){
	for(var i = 0; i < ds_list_size(textArray); i++)
	{
		show_debug_message(textBoxCreated)
		if(textBoxCreated == i)
		{
			NewTextBox(ds_list_find_value(textArray,i));
		}
		else if(mouse_check_button_pressed(mb_left))
		{		
			textBoxCreated++;
			with(oText){instance_destroy();}
			if(textBoxCreated > ds_list_size(textArray))
			{
				instance_destroy();
			}
		}
	}	
}