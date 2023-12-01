	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin12.s
	//		TaskID:????????????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 12 )
		if 	$count < 5
			BC( "screen", "player", -1, "Insufficient Major Fortify Crystal Shards!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 12, 5)

		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 2, 1 )
		endif
		//	BC( "screen", "player", -1, "GUID:05972000002" )
		
		
	}