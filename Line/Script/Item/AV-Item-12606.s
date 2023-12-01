	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:AV-Item-12606.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$task0 = IsTaskAccept( -1, 2319 )
		if $task0 != 0
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 13
			BC( "screen", "player", -1, "It must be used in King's Gorge." )
			return
		endif
		
		if $player1 < 147
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		if $player1 > 157
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		
		if $player2 < 128
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		if $player2 > 138
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12607, 1 )
		
	}