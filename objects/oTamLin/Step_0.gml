vsp = vsp + grv;

if(place_meeting(x,y+vsp, PWall))
{
		
		if(isWalking)
		{
			sprite_index = sTamLin_HorseWalk;
		}
		else
		{
			sprite_index = sTamLin_Horse_Standing;
		}
	while(!place_meeting(x,y+sign(vsp),PWall))
	{
		
		y += vsp;
		

	}
}