    //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºMonster41012.s
	//		TaskID£ºÔ¶¹ÅÊ¯°å
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 826 )
		if $Task1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddPlayerInfo( -1, "item", 12371, 1 )
		$Random = RandomNumber( 1, 100 )
		if $Random <= 10
			if $level > 19
				if $level < 31
					AddMonster( 10908, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 10909, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 10910, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 10911, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 10912, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 10913, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 10914, 1, 153, $playerX, $playerY, 1 )
					return
			endif
		endif
		
	}