//Player Input
key_left = keyboard_check (vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Determine Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

//Jumping
if(place_meeting(x, y + 1, oWall)) && (key_jump){
	vsp = -10;//Change this to macro?
}

//Horizontal Collision
if(place_meeting(x + hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, oWall)){
	while(!place_meeting(x, y + sign(vsp), oWall)){
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;