
xpos = (camera_get_view_x(cam) + (display_get_gui_width()*0.5));
ypos = (camera_get_view_y(cam) + (camera_get_view_height(cam)/2));

if(!instance_exists(oKnotPiece)) 
{
	canRun = true;
	global.hasControl = false;
}