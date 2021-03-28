if(textCreated == 0)
{
	NewTextBox("This is the first test text.");
	if(mouse_check_button_pressed(mb_left))
	{
		textCreated += 1;
		with(oText) {instance_destroy();}
	}
}
else if(textCreated == 1)
{
	NewTextBox("This is the second test text.");
	if(mouse_check_button_pressed(mb_left))
	{
		textCreated += 1;
		with(oText) {instance_destroy();}
	}
}
else if(textCreated == 2)
{
	instance_destroy();
}