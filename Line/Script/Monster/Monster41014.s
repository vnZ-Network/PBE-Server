    //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºMonster41014.s
	//		TaskID£ºÑª²Ý
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 829 )
		if $Task1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddPlayerInfo( -1, "item", 12369, 1 )
		$Random = RandomNumber( 1, 100 )
		if $Random <= 10
			if $level > 19
				if $level < 31
					AddMonster( 10791, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 10792, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 10793, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 10794, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 10795, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 10796, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 10797, 1, 153, $playerX, $playerY, 1 )
					return
			endif
		endif
		
	}