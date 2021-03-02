vsp = vsp + grv;

if(place_meeting(x,y+vsp, PWall))
{
	while(!place_meeting(x,y+sign(vsp),PWall))
	{
		y += vsp;
	}
}