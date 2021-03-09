/// @description Progress the transition

if(mode != TRANS_MODE.OFF)//Are we transitioning?
{
	if(mode == TRANS_MODE.INTRO)//Are we in intro transition?
	{
		//TRANSITION IN
		percent = max(0, percent - max((percent/10), 0.005));//pseudo-lerping
		/*percent equals a percentage value that starts fast. 
		percent - max((percent/10), 0.005) will yield take the percentage then subtract
		the maximum between the current percent and 0.005
		THIS IS FOR BRINGING THE SCREEN UP
		*/
	}
	else
	{
		//TRANSITION OUT
		percent = min(1, percent + max(((1 - percent)/10), 0.005));//pseudo-lerping
		/*percent equals percentage value that starts fast
		We are taking the minimum between 1 and the maximum of the percentage and 0.005
		and adding it to percent.
		THIS IS FOR BRINGING THE SCREEN BACK DOWN
		*/
	}
	
	if(percent == 1) || (percent == 0)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO://Stop transition
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT://Send to next room
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO://Send to specific room
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART://Restart Game
			{
				game_restart();
				break;
			}
		}
	}
}