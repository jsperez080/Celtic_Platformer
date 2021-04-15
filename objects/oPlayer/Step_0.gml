#region//Player Input
key_left = keyboard_check (vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
#endregion

#region//Determine Movement
if(global.hasControl)
{
	var move = key_right - key_left;
	hsp = move * walksp;
	vsp = vsp + grv;


	//Jumping
	if(place_meeting(x, y + 1, PWall)) && (key_jump){
		vsp = -10;//Change this to macro?
	}

	//Horizontal Collision
	if(place_meeting(x + hsp, y, PWall)){
		while(!place_meeting(x+sign(hsp), y, PWall)){
			x = x + sign(hsp);	
		}
		hsp = 0;
	}
	x = x + hsp;

	//Vertical Collision
	inst = instance_place(x,y +vsp,PWall)
	if(inst != noone)&& (vsp <= 0 or y < inst.y) {
	//if(place_meeting(x, y + vsp, PWall)){
		while(!place_meeting(x, y + sign(vsp), PWall)){
			y = y + sign(vsp);	
		}
		vsp = 0;
	}
	y = y + vsp;
}
#endregion

image_speed = 1;
if(hsp == 0)
{
	sprite_index = sPlayer;
}
else
{
	sprite_index = sJanetWalk;
}


if(hsp != 0) {image_xscale = sign(hsp)};
