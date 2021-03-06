/// @desc Camera Follow

//Does the player exist?
if(instance_exists(follow))
{
	//Update movement variables
	xMove = follow.x;
	yMove = follow.y;
}

//Add Movement to camera
x += (xMove - x) / FOLLOW_SPEED;
y += (yMove-y) / FOLLOW_SPEED;

//Keep Camera Clamped to Room Size
x = clamp(x, viewWHalf - camBuffer, room_width - viewWHalf - camBuffer);
y = clamp(y, viewHHalf + camBuffer, room_height - viewHHalf - camBuffer);

//Set Camera Position
camera_set_view_pos(cam, x-viewWHalf, y-viewHHalf);

if(layer_exists("B_Layer4"))
{
	layer_x("B_Layer4", x/2);
}

if(layer_exists("B_Layer2"))
{
	layer_x("B_Layer2", x/4);
}