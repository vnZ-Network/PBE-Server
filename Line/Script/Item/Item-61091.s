	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-61091.s
	//		TaskID:???(EVER)
	//
	//****************************************
	
	function OnUseItem(){
		
		//?4?????
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 4 
			BC( "screen", "player", -1, "Insufficient bag slots" )
			return	
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 61091 , 1 )
		if $result == 0
			AddPlayerInfo( -1 , "item" , 61016 , 1 )
			AddPlayerInfo( -1 , "item" , 61033 , 1 )
			AddPlayerInfo( -1 , "item" , 61016 , 1 )
			AddPlayerInfo( -1 , "item" , 61029 , 1 )
		endif
		
	}