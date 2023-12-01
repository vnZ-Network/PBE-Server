	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/09
	//		Author:???
	//		TaskName:LB-ITEM-63444.s
	//		TaskID:?????????(?)
	//
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 12
			BC( "dialogbox", "player", -1, "You need 12 empty bag slots." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", 63444 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63444, 1 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 5142, 2 )
		AddPlayerInfo( -1, "item", 5022, 2 )
		AddPlayerInfo( -1, "item", 5042, 2 )
		AddPlayerInfo( -1, "item", 2212, 6 )
		return
		
	}