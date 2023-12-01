	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:Taiwan-item-58105.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58105 , 1 )
		if  $info != 0
			return
		endif
		$n = RandomNumber ( 0 , 9999 )
		if $n < 2
			AddPlayerInfo( -1 ,"item", 62019 , 1 )	
		endif
		if $n < 102
			if $n >= 2
				AddPlayerInfo( -1 ,"item", 64401 , 1 )	
			endif
		endif
		if $n < 202
			if $n >= 102
				AddPlayerInfo( -1 ,"item", 2137 , 1 )	
			endif
		endif
		if $n < 602
			if $n >= 202
				AddPlayerInfo( -1 ,"item", 63269 , 1 )	
			endif
		endif
		if $n < 3102
			if $n >= 602
				AddPlayerInfo( -1 ,"item", 63365 , 1 )	
			endif
		endif
		if $n >= 3102
			AddPlayerInfo( -1 ,"item", 63366 , 2 )	
		endif
		
	}