	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/09
	//		Author:???
	//		TaskName:Item-44422.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44422 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44422, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 21192 , 1 )
		AddPlayerInfo( -1, "item", 59840 , 1 )
		
	}