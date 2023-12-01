	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:AV-ITEM-12478_12480.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 12478 )
		$item2 = GetPlayerInfo( -1, "item", 12479 )
		$item3 = GetPlayerInfo( -1, "item", 12480 )
		
		if $item1 < 1
			BC( "screen", "player", -1, "You have not got Square Flame Stone." )
			return
		endif
		if $item2 < 1
			BC( "screen", "player", -1, "You have not got Round Flame Stone." )
			return
		endif
		if $item3 < 1
			BC( "screen", "player", -1, "You have not got Triangel Flame Stone." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12478, 1 )
		if $SubItem1 != 0
			return
		endif
		$SubItem2 = SubPlayerInfo( -1, "item", 12479, 1 )
		if $SubItem2 != 0
			return
		endif
		$SubItem3 = SubPlayerInfo( -1, "item", 12480, 1 )
		if $SubItem3 != 0
			return
		endif
		
		FlyToMap( -1, 160, 83, 83 )
		return
	}