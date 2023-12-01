	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/27
	//		Author:???
	//		TaskName:ITEM-59899.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 59899 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "Congratulation, you obtained a LV3 Gem Coin." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You must have at least 1 free bag space." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 59899, 1 )
		if $Sub != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 4901, 50 )
		AddPlayerInfo( -1, "item", 4903, 10 )
		AddPlayerInfo( -1, "item", 4915, 1 )
		AddPlayerInfo( -1, "item", 4916, 1 )
		
	}