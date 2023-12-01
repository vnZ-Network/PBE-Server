	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-yaoshi-12407_12410.s
	//		TaskID:????5249
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 12407 )
		$item2 = GetPlayerInfo( -1, "item", 12408 )
		$item3 = GetPlayerInfo( -1, "item", 12409 )
		$item4 = GetPlayerInfo( -1, "item", 12410 )
		
		if $item1 < 1
			BC( "screen", "player", -1, "Incorrect digits" )
			return
		endif
		if $item2 < 1
			BC( "screen", "player", -1, "Incorrect digits" )
			return
		endif
		if $item3 < 1
			BC( "screen", "player", -1, "Incorrect digits" )
			return
		endif
		if $item4 < 1
			BC( "screen", "player", -1, "Incorrect digits" )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12407, 1 )
		if $SubItem1 != 0
			return
		endif
		$SubItem2 = SubPlayerInfo( -1, "item", 12408, 1 )
		if $SubItem2 != 0
			return
		endif
		$SubItem3 = SubPlayerInfo( -1, "item", 12409, 1 )
		if $SubItem3 != 0
			return
		endif
		$SubItem4 = SubPlayerInfo( -1, "item", 12410, 1 )
		if $SubItem4 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12411, 1 )
		return
	}