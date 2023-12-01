 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/11
	//		Author:???
	//		TaskName:NPC-AMXT-241.s
	//		TaskID:94  ??
	//****************************************
	
	function OnRequest(){	
		
		$info = IsTaskDone(-1 , 94)
		$result = IsTaskAccept(-1 , 94)
		if $info != 0
			if $result != 0
				DisableNpcOption(0)
			endif
		endif
		
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(1)
		endif
	}
	
	function OnOption0(){
		FlyToMap( -1, 155 , 42 , 40 )
	}
	
	function OnOption1(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 4131 )
		if $Item0 > 14
			$Sub0 = SubPlayerInfo( -1, "item", 4131, 15 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 12206, 1 )
		else
			BC( "dialogbox", "player", -1, "Want the Red Key? Then get me the 15 units of Prepared Galaxygrass!{#ffff0000=#}\n{#ffff0000=(You can either make them yourself with your Crafting skill, or purchase them from other players with the appropriate skill.)#}" )
			return
		endif
		
	}