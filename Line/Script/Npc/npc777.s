	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:npc777.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		$renwu =  IsTaskAccept(-1,329)
		if $renwu != 0
			DisableNpcOption(0)
		endif
		
		
	}
	
	function OnOption0(){
		$renwu =  IsTaskAccept(-1,329)
		
		if $renwu != 0
			BC( "screen" , "player" , -1, "You do not have the corresponding quest." )
			return
		endif
		
		$daoju1 = GetPlayerInfo(-1,"item",12834)
		
		if $daoju1 != 0
			BC( "screen" , "player" , -1, "You have received an Enchanted Bowl." )
			return
		endif
		
		$daoju2 = GetPlayerInfo(-1,"item",12835)
		
		if $daoju2 != 0
			BC( "screen" , "player" , -1, "You have received an Enchanted Bowl." )
			return
		else
			AddPlayerInfo(-1,"item",12834,1)
		endif
		
		
		
	}