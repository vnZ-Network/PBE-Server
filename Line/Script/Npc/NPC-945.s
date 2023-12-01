	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-945.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		$task = IsTaskAccept(-1,391)
		if $task != 0
			DisableNpcOption(0)
		endif

		
	}
	
	function OnOption0(){
		
		$daoju = GetPlayerInfo(-1,"item",12868)
		if $daoju > 0
			BC("screen","player",-1,"You've already acquired this item!")
			return
		else
			AddPlayerInfo(-1,"item",12868,1)
		endif
			
		
	}
	