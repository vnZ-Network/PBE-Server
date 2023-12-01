	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:HD-TDchushi-ITEM-64556.s
	//		TaskID:???????????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64556 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Disciple's Graduation Pack!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 5
			BC( "dialogbox", "player", -1, "Insufficient common bag slots!" )
			return
		endif
		if $bag_count1 < 5
			BC( "dialogbox", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64556, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 60095, 50 )
		AddPlayerInfo( -1, "item", 63213, 40 )
		
	}