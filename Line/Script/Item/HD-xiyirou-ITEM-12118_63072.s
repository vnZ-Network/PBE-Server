	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/18
	//		Author:???
	//		TaskName:HD-xiyirou-ITEM-12118_63072.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????
		$count = GetPlayerInfo( -1, "item", 12118 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have Lizard Meat!" )
			return
		endif
		
		$count1 = GetPlayerInfo( -1, "item", 63072 )
		if $count1 < 1
			BC( "screen", "player", -1, "You don't have Moonlight Wine!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 12118, 1 )
		$result1 = SubPlayerInfo( -1, "item", 63072, 1 )
		//??????		
		if $result != 0
			return
		endif		
		if $result1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12119, 1 )
	
	}