	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/27
	//		Author:???
	//		TaskName:ITEM-caihong-12374.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$task0 = IsTaskAccept( -1, 912 )
		if $task0 != 0
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 153
			BC( "screen", "player", -1, "Available only in Rainbow Valley!" )
			return
		endif
		
		if $player1 < 124
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player1 > 134
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		if $player2 < 203
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		if $player2 > 213
			BC( "screen", "player", -1, "You are not at the required location to proceed!" )
			return
		endif
		
		AddStatus( -1, 10510, 1 )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		$level = GetPlayerInfo( -1, "level" )
			if $level > 19
				if $level < 31
					AddMonster( 20921, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 20922, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 20923, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 20924, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 20925, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 20926, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 20927, 1, 153, $playerX, $playerY, 1, -1 )
					return
			endif
		
	}