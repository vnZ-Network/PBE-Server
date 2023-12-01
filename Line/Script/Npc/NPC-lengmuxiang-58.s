	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:NPC-lengmuxiang-58.s
	//		TaskID:58 ??????
	//
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(0)
		endif
		
		$item = GetPlayerInfo( -1, "item", 12206 )
		if $item < 1
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$null = GetPlayerInfo( -1, "nullitem", 0 )
		if $null < 2
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 12206 )
		if $Item0 > 0
			$Sub0 = SubPlayerInfo( -1, "item", 12206, 1 )
			if $Sub0 != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 12229, 1 )
			AddPlayerInfo( -1, "item", 6327, 1 )
		else
			BC( "dialogbox", "player", -1, "You don't have the Red Key." )
			return
		endif
		
	}