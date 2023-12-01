		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59245.s
	//		TaskID:?????
	//****************************************
 
	function OnUseItem(){
	
	
		$lv = GetPlayerInfo( -1 , "level" )
		$nullitem = GetPlayerInfo( -1 , "nullitem", 0 )
		$pro = GetPlayerInfo( -1 , "profession" )

		if $lv < 60
			BC( "screen", "player", -1, "You can't use it before reaching LV60." )
			return
		endif
		
		
		if $nullitem < 3
			BC( "screen", "player", -1, "You need at least 3 open Bag slots." )
			return
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 59245 , 1 )
		if $result != 0
			return
		endif
		
		
		if $pro <= 3
			AddPlayerInfo( -1, "item", 5977, 1 )
			AddPlayerInfo( -1, "item", 2211, 1 )
			AddPlayerInfo( -1, "item", 2264, 1 )
		else
			AddPlayerInfo( -1, "item", 5978, 1 )
			AddPlayerInfo( -1, "item", 2211, 1 )
			AddPlayerInfo( -1, "item", 2264, 1 )
		endif
		
		
		
	}