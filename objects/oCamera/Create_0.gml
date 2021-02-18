/// @desc Camera Set Up

cam = view_camera[0];
follow = oPlayer;
viewWHalf = camera_get_view_width(cam) * 0.5;
viewHHalf = camera_get_view_height(cam) * 0.5;

xMove = xstart;
yMove = ystart;

camBuffer = 32;