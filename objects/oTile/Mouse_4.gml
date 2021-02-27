if(place_empty(x+1,y)) { x += sprite_width; }
else if(place_empty(x-1,y)) { x -= sprite_width; }
else if(place_empty(x,y+1)) { y += sprite_height; }
else if(place_empty(x,y-1)) { y -= sprite_height; }