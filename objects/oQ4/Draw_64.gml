if(canGetAnswer)
{
	draw_sprite(sprBox,0,xpos,ypos);
	//draw_text_ext(xpos,ypos-textHeight*2,"Should I pick it up?", 15, spriteWidth - 20);
	draw_text(xpos, ypos+textHeight, Answer[1]);
	draw_text(xpos, ypos+textHeight*4, Answer[0]);
	
	var _left = xpos-(string_width(Answer[1]));
	var _right = xpos+(string_width(Answer[1]));
	var _bottomYes = ypos+(textHeight/2);
	var _topYes = ypos-(textHeight/2);
	var _topNo = _bottomYes + textHeight;
	var _bottomNo = _topNo + (textHeight*2);
	
	var _mouseYgui = device_mouse_y_to_gui(0);
	var _mouseXgui = device_mouse_x_to_gui(0);
	
	if((_mouseXgui > _left) && (_mouseXgui < _right))
	{
		//Player chooses True		
		if(_mouseYgui > _topYes) && (_mouseYgui < _bottomYes)
		{
			draw_text_color(xpos, ypos+textHeight,Answer[1],c_gray,c_gray,c_gray,c_gray,1);
			if(mouse_check_button_pressed(mb_left))
			{
				show_debug_message("Correct");
				canGetAnswer = false;
				instance_destroy();
			}
		}
		
		//Player chooses False

		
		if((_mouseYgui > _topNo) && (_mouseYgui < _bottomNo))
		{
			draw_text_color(xpos, ypos+textHeight*4,Answer[0],c_gray,c_gray,c_gray,c_gray,1);
			if(mouse_check_button_pressed(mb_left))
			{
				show_debug_message("Incorrect");
			}
		}
	}	
}