	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:NPC-HB-242.s
	//		TaskID:242 ??
	//
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(0)
		endif
		
		$taskdone1 = IsTaskDone( -1, 1345 )
		if $taskdone1 != 0
			DisableNpcOption(1)
		endif
	
	}
	
	
	function OnOption0(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 4061 )
		if $Item0 > 29
			$Sub0 = SubPlayerInfo( -1, "item", 4061, 30 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 12207, 1 )
		else
			BC( "dialogbox", "player", -1, "Okay, so you need the Green Key. Yes, I've been collecting different crystals these days. If you can find me {#ffff0000=30 Crystal Beads#}, I'll give you the Green Key. {#ffff0000=Try looking in the Foraging Grounds.#}" )
			return
		endif
		
	}
	
	function OnOption1(){
		$taskdone1 = IsTaskDone( -1, 1345 )
		if $taskdone1 != 0
			BC( "dialogbox", "player", -1, "You have not finished the quest yet." )
			return
		endif
		
		FlyToMap( -1, 155, 41, 99 )
	}