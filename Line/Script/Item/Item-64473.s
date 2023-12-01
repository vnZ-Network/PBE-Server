	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/17
	//		Author:???
	//		TaskName:Item-64473.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 64473 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 64473, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 4988 , 15 )
	}