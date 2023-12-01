	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-61090.s
	//		TaskID:???(FOR)
	//
	//****************************************
	
	function OnUseItem(){
		
		//?4?????
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 3
			BC( "screen", "player", -1, "Insufficient bag slots" )
			return	
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 61090 , 1 )
		if $result == 0
			AddPlayerInfo( -1 , "item" , 61017 , 1 )
			AddPlayerInfo( -1 , "item" , 61026 , 1 )
			AddPlayerInfo( -1 , "item" , 61029 , 1 )
		endif
		
	}