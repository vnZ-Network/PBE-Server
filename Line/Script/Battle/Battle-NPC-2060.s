	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/12
	//		Author:???
	//		TaskName:Battle-NPC-2060.s
	//		TaskID: ??
	//
	//****************************************
	
	function OnRequest(){
			
	}
	
	function OnOption0(){
	
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
	
		$result = BattleSignCamp( 220 , 2 )
		if $result == 0
			if $Men1 != -1
				BC( "chat", "player", $Men1 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men1 , "You are in the battlefield queue." )
			endif
			if $Men2 != -1
				BC( "chat", "player", $Men2 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men2 , "You are in the battlefield queue." )
			endif
			if $Men3 != -1
				BC( "chat", "player", $Men3 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men3 , "You are in the battlefield queue." )
			endif
			if $Men4 != -1
				BC( "chat", "player", $Men4 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men4 , "You are in the battlefield queue." )
			endif
			if $Men5 != -1
				BC( "chat", "player", $Men5 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men5 , "You are in the battlefield queue." )
			endif
			if $Men6 != -1
				BC( "chat", "player", $Men6 , "You are in the battlefield queue." )
				BC( "screen", "player", $Men6 , "You are in the battlefield queue." )
			endif
		endif
			
		if $result == 1
			BC( "dialogbox", "player", -1, "Battlefield register has not started yet. Please come back later." )
			return
		endif

		if $result == 2
			BC( "dialogbox", "player", -1, "You register has been enlisted. Please wait until the battlefield opens." )
			return
		endif

		if $result == 3
			BC( "dialogbox", "player", -1, "Battlefield queue is full. Please try again next time." )
			return
		endif
		
		if $result == 4
			BC( "dialogbox", "player", -1, "Unable to register. You are not the part leader." )
			return
		endif
			
	
	}