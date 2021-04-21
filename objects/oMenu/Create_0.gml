/// @des GUI/Vars/Menu setup
#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;//Where we want our text to line up
menu_speed = 25; //lower is faster
menu_font = fText;
menu_itemheight = font_get_size(fText);
menu_committed = -1;//Which menu selection selected?
menu_control = true;

//Game options
menu[3] = "New Game";
menu[2] = "Controls";
menu[1] = "Credits";
menu[0] = "Quit";

menu_items = array_length_1d(menu);

menu_top = menu_y - ((menu_itemheight*2.5) * menu_items);

menu_cursor = 2;