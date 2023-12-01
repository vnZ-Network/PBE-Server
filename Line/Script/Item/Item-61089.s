	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-61089.s
	//		TaskID:???(YOU)
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
		
		$result = SubPlayerInfo( -1 , "item" , 61089 , 1 )
		if $result == 0
			AddPlayerInfo( -1 , "item" , 61036 , 1 )
			AddPlayerInfo( -1 , "item" , 61026 , 1 )
			AddPlayerInfo( -1 , "item" , 61032 , 1 )
		endif
		
	}