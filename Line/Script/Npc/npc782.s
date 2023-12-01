	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:npc782.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		$accept336 = IsTaskAccept(-1,336)
		$done336 = IsTaskDone(-1,336)
		if $accept336 != 0
			if $done336 != 0
				DisableNpcOption(0)
			endif
		endif
		
		
	}
	
	function OnOption0(){
		
		
		$play_id = GetPlayerID()
		$fly = FlyToMap($play_id,538,21,66)
			if $fly > 0
				BC("screen","player",-1,"You have entered the Twilight Zone!")
			endif
		
	}