	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/16
	//		Author£ºÁõÏþè´
	//		TaskName£ºMonster-40424.s
	//		TaskID£º²É¼¯³Â¾É¹ÞÍ·
	//****************************************
	
	function OnDead(){
		$Random1 = RandomNumber( 1, 100 )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		if $Random1 <= 40
			AddPlayerInfo( -1, "item", 12412, 1 )
			return
		endif
		if $Random1 > 40
			if $Random1 <= 80
				AddPlayerInfo( -1, "item", 12413, 1 )
				return
			endif
		endif
		if $Random1 > 80
			if $Random1 <= 100
				AddPlayerInfo( -1, "item", 12414, 1 )
				return
			endif
		endif
		
	}