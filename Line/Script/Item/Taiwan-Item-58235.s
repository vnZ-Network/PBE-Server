	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Taiwan-Item-58235.s
	//		TaskID:S???
	//****************************************
	
	function OnUseItem(){
		
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 3
			BC( "screen", "player", -1, "You need at least 3 empty slots in your bag." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 58235 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 63366 , 3 )
		AddPlayerInfo( -1 , "item" , 60013 , 3 )
		AddPlayerInfo( -1 , "item" , 64268 , 1 )
	}

