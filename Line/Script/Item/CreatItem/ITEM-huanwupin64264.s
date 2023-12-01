	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin64264.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 64264 )
		if $count < 5
			BC( "screen", "player", -1, "Insufficient Seal Removal Stone Fragment!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 64264, 5)

		//??????
		if $revalue == 0 
			AddPlayerInfo( -1, "item", 2311, 1 )
		endif
		
		
	}
