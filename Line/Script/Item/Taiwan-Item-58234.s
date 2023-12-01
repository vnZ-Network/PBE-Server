	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Taiwan-Item-58234.s
	//		TaskID:D???
	//****************************************
	
	function OnUseItem(){
		
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 58234 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 63366 , 1 )
		
	}

