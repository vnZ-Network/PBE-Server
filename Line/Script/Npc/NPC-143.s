 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:NPC-143.s
	//		TaskID:???
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1,1513 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		
		$info = GetPlayerInfo( -1 , "item",64005)
		
		if $info < 58
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif 
		
		$task1 = IsTaskAccept( -1,1523 )
		if $task1 != 0
			DisableNpcOption(2)
		endif
		
		$task2 = IsTaskDone( -1,1523 )
		if $task2 != 0
			DisableNpcOption(3)
		endif
	}
	
	function OnOption0(){
		$info1 = GetPlayerInfo( -1 , "item",64005)
		
		if $info1 < 58
			BC( "dialogbox", "player", -1, "You don't have enough Obsidian Powder!" )
			return
		endif
		$del1 = SubPlayerInfo( -1 , "item",64005,58)
		if $del1 != 0
			return
		endif
		SetTaskDone( -1, 1513 )
		AddPlayerInfo( -1 , "exp" ,60330 )
		AddPlayerInfo( -1 , "money" ,2120 )

	}
	
	function OnOption1(){
		BC( "dialogbox", "player", -1, "Unable to acquire revelation from the broken Stone of Memory. You need to activate it again with 58 Obsidian Powder." )
	}
	
	function OnOption2(){
		FlyToMap( -1,209,41,82)
	}
	function OnOption3(){
		FlyToMap( -1,209,41,82)
	}