	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59045.s
	//		TaskID:??PK?????
	//****************************************
	
	function OnUseItem(){
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59045 , 1 )
		if $nfo != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 63550 , 5 )
		AddPlayerInfo( -1 , "item" , 64371 , 1 )
		
	}

