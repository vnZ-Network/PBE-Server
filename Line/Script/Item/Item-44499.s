	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:???
	//		TaskName:Item-44499.s
	//		TaskID:VIP???????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44499 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44499, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 21196 , 1 )
		AddPlayerInfo( -1, "item", 59840 , 1 )
		
	}