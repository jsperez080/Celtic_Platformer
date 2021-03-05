//What state do I want the user to aspire for
var winningCondition = [1, 4, 7, 
						2, 5, noone,
						3, 6, 8];
							
//What state is the game currently in?
var currentCondition = [noone, noone, noone,
						noone, noone, noone,
						noone, noone, noone];
						
#region//Determine if there is a winning combination
var value = 0;
var complete = true;

for(var j=0; j<3; j++)
{
	for(var i=0; i<3; i++)
	{
		var ins = collision_point(x + (i*sprite_get_width(sTile)),
								  y + (j*sprite_get_height(sTile)),
								  oTile,
								  false,
								  false);
		
		if(ins != noone)
		{
			currentCondition[value] = ins.value;
		}
		
		if(currentCondition[value] != winningCondition[value])
		{
			complete = false;
		}
		
		value++;
	}
}
#endregion

#region//Object destruction
if(complete == true)
{
	NewTextBox("This is a test.");
	NewTextBox("This is the second test.");
	if(mouse_check_button_pressed(mb_left))
	{
		counter++;
		if(counter >= maxTextBoxes)
		{
		with(oText) {instance_destroy();}
		with(oTextQueued) {instance_destroy();}
		with(oTile){instance_destroy();}
		instance_destroy();
		}
	}
}
#endregion