	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:LB-ITEM-61077.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 61077 )
		if $item1 < 5
			BC( "screen", "player", -1, "You have less than 5 Basic Soulgem Fragments." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 61077, 5 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 61073, 1 )
		return
		
	}