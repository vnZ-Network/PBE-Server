	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/10
	//		Author:??
	//		TaskName:ITEM-huanwupin12204.s
	//		TaskID:??®???¯??12204,12205,12206,12207?????????
	//
	//****************************************
	
	function OnUseItem(){
	

		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		

		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 12205 )
		if 	$count < 1
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			return
		endif
		//??2?????
		$count = GetPlayerInfo( -1, "item", 12206 )
		if 	$count < 1
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			return
		endif
		//??3?????
		$count = GetPlayerInfo( -1, "item", 12207 )
		if 	$count < 1
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			BC( "screen", "player", -1, "You haven't found all the Burial Artifacts!" )
			return
		endif
		
		//??????
		SubPlayerInfo( -1, "item", 12205, 1)
		SubPlayerInfo( -1, "item", 12206, 1)
		SubPlayerInfo( -1, "item", 12207, 1)
		//??????
		AddPlayerInfo( -1, "item", 12219, 1 )
		BC( "screen", "player", -1, "You have acquired Buried Man!" )
		BC( "screen", "player", -1, "You have acquired Buried Man!" )
		
		
	}
