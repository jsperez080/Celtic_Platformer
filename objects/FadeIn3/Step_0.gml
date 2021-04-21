if(alpha <= 1)
{
	alpha -= 1/fadeTime;
	
	if(alpha <= 0)
	{
		instance_destroy();
	}
}