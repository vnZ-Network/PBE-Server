	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:PK-Item-59043.s
	//		TaskID:??PK?????
	//****************************************
	
	function OnUseItem(){
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 3
			BC( "screen", "player", -1, "You need at least 3 empty slots in your bag." )
			return
		endif
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59043 , 1 )
		if $nfo != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 59047 , 1 )
		AddPlayerInfo( -1 , "item" , 63550 , 10 )
		AddPlayerInfo( -1 , "item" , 64371 , 10 )
		
	}

