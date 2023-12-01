	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:npc780.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		
		$play_id = GetPlayerID()
		$fly = FlyToMap($play_id,538,21,66)
			if $fly > 0
				BC("screen","player",-1,"You have entered the Twilight Zone!")
			endif
		
	}