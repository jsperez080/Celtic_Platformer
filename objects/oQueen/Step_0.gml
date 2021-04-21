/// @description Insert description here
// You can write your code in this editor
vsp = vsp + grv;

if(place_meeting(x,y+vsp, PWall))
{
		
		if(isWalking)
		{
			sprite_index = sQueenWalk;
		}
		else
		{
			sprite_index = sQueenWalkStanding;
		}
	while(!place_meeting(x,y+sign(vsp),PWall))
	{
		
		y += vsp;
		

	}
}