	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59042.s
	//		TaskID:??PK?????
	//****************************************
	
	function OnUseItem(){
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 3
			BC( "screen", "player", -1, "You need at least 3 empty slots in your bag." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59042 , 1 )
		if $nfo != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 59046 , 1 )
		AddPlayerInfo( -1 , "item" , 63550 , 20 )
		AddPlayerInfo( -1 , "item" , 64371 , 15 )
		
	}

