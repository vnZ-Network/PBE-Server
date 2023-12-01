	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin11.s
	//		TaskID:????????????????
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
		$count = GetPlayerInfo( -1, "item", 11 )
		if 	$count < 5
			BC( "screen", "player", -1, "Insufficient Fortify Crystal Shard!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 11, 5)

		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 1, 1 )
		endif
		//BC( "screen", "player", -1, "GUID:05971000002" )
		
		
	}