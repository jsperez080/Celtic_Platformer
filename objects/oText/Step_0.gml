/// @desc Progress Text

//Copy Text to currentText
letters += spd;
currentText = string_copy(text, 1, floor(letters));

//Set Text boundaries
draw_set_font(fText);
if(height == 0) {height = string_height(text);}
width = string_width(currentText);

//Destroy Text when complete
if(letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with(oCamera) {follow = oPlayer;}
}