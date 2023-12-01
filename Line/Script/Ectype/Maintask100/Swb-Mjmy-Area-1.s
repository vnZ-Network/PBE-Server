	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/13
	//		Author:???
	//		TaskName:Swb-Mjmy-Area-1.s
	//		TaskID:  
	//****************************************
	
	function EnterArea(){
	
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			return
		endif

		BC( "screen" , "player" , -1 , "Ammit: To unlock the pillar and meet Maldy, the Pillars of Nightmare must be in the correct order. Try again." )
		BC( "chat" , "player" , -1 , "Ammit: To unlock the pillar and meet Maldy, the Pillars of Nightmare must be in the correct order. Try again." )


	}

	function LeaveArea(){
	
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			return
		endif
		BC( "screen" , "player" , -1 , "Ammit: To unlock the pillar and meet Maldy, the Pillars of Nightmare must be in the correct order. Try again." )
		BC( "chat" , "player" , -1 , "Ammit: To unlock the pillar and meet Maldy, the Pillars of Nightmare must be in the correct order. Try again." )
	}

