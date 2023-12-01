	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Item-64297.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 64297 , 1 )
		if $nfo != 0
			return
		endif
		$n = RandomNumber ( 1, 10000 )
		if $n <= 75
			AddPlayerInfo ( -1 , "item" , 64386 , 1 )
		endif
		if $n > 75
			if $n <= 375
				AddPlayerInfo ( -1 , "item" , 64387 , 1 )
			endif
		endif
		if $n > 375
			if $n <= 2175
				AddPlayerInfo ( -1 , "item" , 64388 , 1 )
			endif
		endif
		if $n > 2175
			if $n <= 10000
				AddPlayerInfo ( -1 , "item" , 64389 , 1 )
			endif	
		endif
		
	}

