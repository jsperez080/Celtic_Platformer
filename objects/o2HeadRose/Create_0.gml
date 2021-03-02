counter = 0;
canGetAnswer = false;

sprBox = sTextBox;
xpos = display_get_gui_width()*0.5;
yBuffer = 70;
ypos = display_get_gui_height()-yBuffer;
spriteWidth = sprite_get_width(sprBox);
textHeight = font_get_size(fText);

timer = game_get_speed(gamespeed_fps);
countdown = 0;

//Answer Selection
Answer[1] = "Yes";
Answer[0] = "No";

cam = view_camera[0];