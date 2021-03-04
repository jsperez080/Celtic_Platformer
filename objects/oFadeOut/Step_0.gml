if(alpha < 1)
{
	alpha += 1/fadeTime;
	
	if(alpha >= 1)
	{
		instance_destroy();
	}
}