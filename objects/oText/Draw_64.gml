//Draw Text

draw_sprite(sprTextBox,0,xpos,ypos);
DrawSetText(c_white,fText,fa_center,fa_bottom);

var _print = string_copy(textMessage, 1, floor(letters));
draw_text_ext(xpos,ypos + textYBuffer, _print, 15, spriteWidth - 20);