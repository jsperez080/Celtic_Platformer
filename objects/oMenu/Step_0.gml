/// @desc Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if(menu_control)//Does player have control of menus?
{
	if(keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if(menu_cursor >= menu_items) {menu_cursor = 0;}
	}
	else if(keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if(menu_cursor < 0) {menu_cursor = menu_items - 1;}
	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200; //Send menu back to right of screen
		menu_committed = menu_cursor; //Establish selected element
		menu_control = false;//Disable menu controls
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if(mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 2.3);
		
		if(mouse_check_button_pressed(mb_left))
		{
			menu_x_target = gui_width + 200; //Send menu back to right of screen
			menu_committed = menu_cursor; //Establish selected element
			menu_control = false;//Disable menu controls
		}
	}
	
}

if(menu_x > gui_width+150) && (menu_committed != -1)
{
	switch(menu_committed)
	{
		case 3: default:
			SlideTransition(TRANS_MODE.NEXT);
			break;
			
		case 2:
			layer_set_visible("Controls_Instance",visible)
		
				if mouse_check_button(mb_left)
					room_restart()
				
			break;
		
			
		case 1:
			layer_set_visible("Credits_Instances",visible)
		
				if mouse_check_button(mb_left)
					room_restart()
				
			break;
		
		case 0:
			game_end();
			break;
	}
}