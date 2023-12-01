	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/9
	//		Author:???
	//		TaskName:NPC-278.s
	//		TaskID: ?????
	//
	//****************************************
	
	function OnRequest(){
		$task1 = IsTaskDone( -1 , 1638 )
		$task2 = IsTaskAccept( -1 , 1640 )
		if $task1 != 0
			DisableNpcOption(0)
		endif
		if $task2 == 0
			DisableNpcOption(0)
		endif
		$info = GetPlayerInfo( -1 , "item" , 12461 )
		if $info > 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		
		$task = IsTaskDone( -1 , 1638 )
		if $task != 0
			return
		endif
		$task2 = IsTaskAccept( -1 , 1640 )
		if $task2 == 0
			return
		endif
		$info = GetPlayerInfo( -1 , "item" , 12461 )
		if $info > 0
			BC( "dialogbox", "player", -1, "You have the disguise pack already." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12461 , 1 )
		
	}
	
	