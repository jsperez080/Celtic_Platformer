/// @desc Progress Text

//Copy Text to currentText
letters += spd;

if(mouse_check_button_pressed(mb_right))
{
	var _messageLength = string_length(textMessage);
	if(letters >= _messageLength)
	{
		instance_destroy();
		if(instance_exists(oTextQueued))
		{
			with(oTextQueued) {ticket--;}
		}
	}
	else
	{
		if(letters > 2)
		{
			letters = _messageLength;
		}
	}
}

//Set Text boundaries
draw_set_font(fText);
if(height == 0) {height = string_height(textMessage);}
width = string_width(currentText);