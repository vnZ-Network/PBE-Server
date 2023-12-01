	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:ITEM-61096_61098.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 61096 )
		$item2 = GetPlayerInfo( -1, "item", 61097 )
		$item3 = GetPlayerInfo( -1, "item", 61098 )
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		if $item1 < 100
			BC( "screen", "player", -1, "Requires 100 Seal Stabilizer." )
			return
		endif
		if $item2 < 4
			BC( "screen", "player", -1, "Requires 4 Sealed Sword." )
			return
		endif
		if $item3 < 1
			BC( "screen", "player", -1, "Requires 1 Sealed Scroll." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 61096, 100 )
		if $SubItem1 != 0
			return
		endif
		$SubItem2 = SubPlayerInfo( -1, "item", 61097, 4 )
		if $SubItem2 != 0
			return
		endif
		$SubItem3 = SubPlayerInfo( -1, "item", 61098, 1 )
		if $SubItem3 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 2419, 1 )
		return
	}