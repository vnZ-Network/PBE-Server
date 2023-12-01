	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:npc-887.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		
	}
	
	function OnOption0(){
		
		$fly = FlyToMap(-1,543,83,42,0)
		if $fly > 0
			BC("screen","player",-1,"Exit Gaia's Dwelling")
			return
		endif
		
	}