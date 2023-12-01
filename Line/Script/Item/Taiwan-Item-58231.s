	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Taiwan-Item-58231.s
	//		TaskID:A???
	//****************************************
	
	function OnUseItem(){
		
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 58231 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 2312 , 1 )
		AddPlayerInfo( -1 , "item" , 63366 , 2 )
		
	}

