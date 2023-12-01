	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/18
	//		Author:???
	//		TaskName:HD-TDchushi-ITEM-63239.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
	//?????????
		$count = GetPlayerInfo( -1, "item", 63239 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Graduation Pack." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 3
			BC( "dialogbox", "player", -1, "You need at least 2 empty slots in your common bag!" )
			return
		endif
		if $bag_count1 < 3
			BC( "dialogbox", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63239, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63213, 20 )
		AddPlayerInfo( -1, "item", 9, 10 )
	
	}