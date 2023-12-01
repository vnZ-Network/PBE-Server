    //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºMonster41013.s
	//		TaskID£ºÊ¯Í·Ïä×Ó
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 825 )
		if $Task1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddPlayerInfo( -1, "item", 12370, 1 )
		$Random = RandomNumber( 1, 100 )
		if $Random <= 10
			if $level > 19
				if $level < 31
					AddMonster( 10901, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 10902, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 10903, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 10904, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 10905, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 10906, 1, 153, $playerX, $playerY, 1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 10907, 1, 153, $playerX, $playerY, 1 )
					return
			endif
		endif
		
	}