	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/17
	//		Author:??
	//		TaskName:Item-44433.s
	//		TaskID:70?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44433 )
		if $Item < 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif		
		$SubItem = SubPlayerInfo( -1, "item", 44433, 1 )
		if $SubItem != 0
			return
		endif
		AddPlayerInfo( -1, "exp", 3000000 )
		AddPlayerInfo( -1, "item", 6064 , 1 )
	}