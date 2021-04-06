xpos = (camera_get_view_x(cam)+ (display_get_gui_width()));

if(global.runCS2 == true)
{
	if(doOnce2)
	{
		instance_create_layer(xpos, oPlayer.y, layer, oKnight);
		doOnce2 = false;
	}
	with(oPlayer) {sprite_index = sPlayer;}
	other.executeText = true;
}