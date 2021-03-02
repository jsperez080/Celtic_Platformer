// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateTextForBox(){
	for(var i = 0; i < ds_list_size(textList); i++)
	{
		NewTextBox(ds_list_find_value(textList,i));//Remove next in list to display
	}
				
	if(counter >= ds_list_size(textList))//If all elements have been displayed
	{
		hasRun = true;
	}
		
	counter++;
	if((hasRun == true))
	{
		//Clear all lists and destroy all Text objects
		ds_list_clear(textList);
		with(oText) {instance_destroy();}
		with(oTextQueued) {instance_destroy();}
		instance_destroy();
	}
		
}
