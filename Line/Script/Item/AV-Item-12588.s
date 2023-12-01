	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:AV-Item-12588.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$task0 = IsTaskAccept( -1, 2316 )
		if $task0 != 0
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 188
			BC( "screen", "player", -1, "It must be used in Cave of Haze." )
			return
		endif
		
		if $player1 < 90
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		if $player1 > 100
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		
		if $player2 < 89
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		if $player2 > 99
			BC( "screen", "player", -1, "Sorry!You are not in the appointed area." )
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		AddMonster( 32132, 1, 188, $playerX, $playerY, 1 )
		
	}