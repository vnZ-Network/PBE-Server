	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-nvyao-12389.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$task0 = IsTaskAccept( -1, 44 )
		if $task0 != 0
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 7
			BC( "screen", "player", -1, "Item must be used in Bermuda Islands!" )
			return
		endif
		
		if $player1 < 137
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player1 > 147
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		if $player2 < 67
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player2 > 77
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		AddMonster( 20004, 1, 7, $playerX, $playerY, 1 )
		
	}