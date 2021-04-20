vsp = vsp + grv;

if(place_meeting(x,y+vsp, PWall))
{
	if(isWalking)
		{
			sprite_index = sJanetSr_Walk;
		}
		else
		{
			sprite_index = sJanetSr;
		}
	while(!place_meeting(x,y+sign(vsp),PWall))
	{
		//sprite_index = isWalking? sJanetSr : sJanetSr_Walk;
		
		y += vsp;
	}
}